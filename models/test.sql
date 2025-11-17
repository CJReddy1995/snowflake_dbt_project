SELECT *
FROM {{ source('raw_data', 'bike') }}
LIMIT 10