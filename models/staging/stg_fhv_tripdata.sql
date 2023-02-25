{{ config(materialized='view') }}

select 
    -- identifiers
    cast(dispatching_base_num as STRING ) as dispatching_base_num,
    cast(SR_Flag as STRING ) as SR_Flag,
    cast(Affiliated_base_number as STRING ) as Affiliated_base_number,
    cast(PUlocationID as integer) as PUlocationID,
    cast(DOlocationID as integer) as DOlocationID,
    -- timestamps
    cast(pickup_datetime as timestamp) as pickup_datetime,
    cast(dropOff_datetime as timestamp) as dropOff_datetime

from {{source('staging','fhv_all_two')}}

{% if var('is_test_run', default=true) %}

limit 100

{% endif %}