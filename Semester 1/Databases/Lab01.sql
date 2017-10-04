alter session set current_schema = builder2;
--question 1--
--A--
select stock_code, stock_description from stock where unit_price < unitcostprice;
--B--
select stock_code, stock_description from stock where stock_level < reorder_level;
--C--
select customer_name from customer left join corder using (customer_id) where corderno is null;
--D--
select stock_description from stock join corderline using (stock_code) join corder using (corderno) join customer using (customer_id) where customer_name = 'Handy Andy';
--E--
select supplier_name from supplier left join stock using (supplier_id) where stock_level is null;
--F--
select customer_id  from customer join corder using (customer_id) join corderline using (corderno) join stock using (stock_code) where stock_code = 'A101' or stock_code = 'A111';
--G--
select staff_name from staff join corder on (staff_no = staffpaid) where customer_id = 5;
--H--
select staff_name from staff join corder on (staff_no = staffpaid) join corderline using (corderno) join stock using (stock_code) join supplier using (supplier_id) where supplier_name = 'Buckleys';
--I--
select customer_id  from customer join corder using (customer_id) join corderline using (corderno) join stock using (stock_code) where stock_code = 'A101' and stock_code = 'A111';
--J--
select supplier_id,sorderno from supplier join sorder using (supplier_id) where sorderdate < delivereddate or delivereddate < delivereddate+5;
