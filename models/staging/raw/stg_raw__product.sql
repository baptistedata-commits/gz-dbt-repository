with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS FLOAT64) AS purchase_price

    from source

)

select * from renamed







models
/
staging
/
raw
/
stg_raw__product.sql

Save
567891011121314151617181920
    select
        products_id,
        CAST(purchse_price AS FLOAT64) AS purchase_price

    from source

)

select * from renamed

3source as (

Preview

Compile

Build

Format
Results$0