--1. Data Preview: to understand what data we have available
select *
from retail.sales.retail_sales_dataset;
--2. Order Segmentation: Categorize the orders by total amount
select `Total Amount`,
case 
    when `Total Amount` > 1000 then 'high value'
    when `Total Amount` between 200 and 1000 then 'medium value'
    else 'low value'
    end AS order_tier
from retail.sales.retail_sales_dataset;
--3. Customer Segmantation: Group customers by age
select `Total Amount`,
      `Age`,
case  
     when `Age` <30 then 'under'
     when `Age`between 30 and 49 then 'middle'
     when `Age` >=50 then 'old'
     end AS age_group
from retail.sales.retail_sales_dataset;
--3. Order Segmentation: Big spenders vs regular spenders
select `Total Amount`,
case
    when `Total Amount`>=500 then 'big spend'
    when `Total Amount`<500 then 'regular spend'
    end AS discount_flag
from retail.sales.retail_sales_dataset;
--4. Customer Segmentation: Combine Age + Spending Behavior
select `Age`,
        `Total Amount`,
case
    when  `Age`<30 and `Total Amount`>1000 then 'young high spender'
    when `Age`>=50 and `Total Amount`>1000 then  'senior high spender'
    else  'other'
    end AS customr_segment
from retail.sales.retail_sales_dataset;
--5. Risk Profiling: High risk age
select Age,
case
    when Age<25 OR Age>65 then 'high risk'
    else 'standard'
    end AS risk_level
from retail.sales.retail_sales_dataset; 

