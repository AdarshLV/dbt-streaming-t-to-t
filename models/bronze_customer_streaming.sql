{{
  config(
    materialized = 'streaming_table',
    unique_key = 'customer_id'
  )
}}

SELECT * FROM
  STREAM({{ source('raw', 'customer_raw') }})
