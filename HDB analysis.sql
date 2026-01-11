select
    town,
	date,
	year,
    region,
    flat_type,
    flat_model,
    floor_rise,
	flat_age,
	flat_condition,
    sqft,
    price_per_sqft,
    resale_price
from hdbprice;

-- Yearly Price Trend
select
    year,
    round(avg(resale_price)) as avg_resale_price,
    round(avg(price_per_sqft)) as avg_price_per_sqft
from hdbprice
group by year
order by year;

-- Year-on-Year (YoY) Growth %

select
    year,
    avg_price,
    round(
        (
            (avg_price - lag(avg_price) over (order by year))
            / lag(avg_price) over (order by year)
        )::numeric * 100,
        2
    ) as yoy_growth
from (
    select
        year,
        round(avg(resale_price)::numeric, 0) as avg_price
    from hdbprice
    group by year
) t
order by year;

-- Town wise avg price

select
    town,
    round(avg(resale_price)) as avg_resale_price,
    count(*) as transactions
from hdbprice
group by town
order by avg_resale_price desc;

-- Region-level Price Comparison

select
    region,
    round(avg(resale_price)) as avg_resale_price,
    round(avg(price_per_sqft)) as avg_price_per_sqft,
	count(*) as transactions
from hdbprice
group by region
order by avg_resale_price desc;

-- flat type performance

select
    flat_type,
    round(avg(resale_price)) as avg_price,
    round(avg(price_per_sqft)) as avg_price_per_sqft
from hdbprice
group by flat_type
order by avg_price desc;

-- floor rise impact

select
    floor_rise,
    round(avg(resale_price)) as avg_price,
    round(avg(price_per_sqft)) as avg_price_per_sqft
from hdbprice
group by floor_rise
order by avg_price desc;

--flat age vs price

select
    flat_age,
    round(avg(resale_price)) as avg_resale_price
from hdbprice
group by flat_age
order by flat_age;

-- flat condition analysis

select
    flat_condition,
    round(avg(resale_price)) as avg_resale_price,
    round(avg(price_per_sqft)) as avg_price_per_sqft
from hdbprice
group by flat_condition;

-- top 10 most expensive transactions
select
    year,
    town,
    flat_type,
    sqft,
    resale_price
from hdbprice
order by resale_price desc
limit 10;

--transaction volume trend
select
    year,
    count(*) as total_transactions
from hdbprice
group by year
order by year;

--price per sqft trend
select
    year,
    round(avg(price_per_sqft)) as avg_price_per_sqft
from hdbprice
group by year
order by year;

--flat model vs transactions
select flat_model,
       count(*) as transactions
from hdbprice
group by flat_model
order by transactions desc
limit 5;



