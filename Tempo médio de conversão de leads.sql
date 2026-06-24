WITH base_completa_leads AS (
  -- Fluent Forms
  SELECT 
    LOWER(TRIM(email)) AS email,
    data_criacao AS data_lead,
    UPPER(TRIM(classificacao)) AS classificacao_lead
  FROM "stg"."stg_leads_fluentforms"
  WHERE email IS NOT NULL AND email <> ''
  UNION ALL
  --TDS Forms submissions
  SELECT 
    LOWER(TRIM("payload" -> 'answers' ->> 'email')) AS email,
    "created_at" AS data_lead,
    UPPER(TRIM(
      COALESCE(
        CONCAT(
          "payload" -> 'scoring' ->> 'prefixo',
          "payload" -> 'scoring' ->> 'leadNumber'
        ),
        '0'
      )
    )) AS classificacao_lead
  FROM "forms"."submissions"
  WHERE "payload" -> 'answers' ->> 'email' IS NOT NULL 
    AND "payload" -> 'answers' ->> 'email' <> ''
),
vendas_unicas AS (
  --momento da venda
  SELECT 
    LOWER(TRIM("E-Mail Comprador")) AS email_comprador,
    MIN("Data Hora Venda") AS data_venda
  FROM "vendas"."vendas_unificada"
  WHERE "Status" = 'APPROVED'
    AND "E-Mail Comprador" IS NOT NULL
    AND "E-Mail Comprador" <> ''
  GROUP BY LOWER(TRIM("E-Mail Comprador"))
)
SELECT
  l.classificacao_lead AS "Classificação do Lead",

  ROUND(
    AVG(
      EXTRACT(EPOCH FROM (v.data_venda - l.data_lead)) / 86400
    )::numeric, 
    1
  ) AS "Tempo Médio até Venda (Dias)",
  COUNT(*) AS "Total de Vendas Aprovadas"

FROM vendas_unicas v
INNER JOIN base_completa_leads l ON v.email_comprador = l.email -- tirando os null
WHERE v.data_venda >= l.data_lead 
  -- remove classificações zeradas e nulas
  AND l.classificacao_lead IS NOT NULL
  AND l.classificacao_lead <> ''
  AND l.classificacao_lead NOT IN ('A0', 'B0', 'C0', 'D0', '0')
  AND l.classificacao_lead ~ '^[A-Z][1-9]' 
GROUP BY l.classificacao_lead
ORDER BY l.classificacao_lead ASC;