select * from orders;
select *from customer
order by id;
select  * from product
order by id;


select * from orders where product_id = (
    select product.id from product where price > 1000);


select customer.name from customer where type = 'вип';

insert into customer (id, name, type)
values (4, 'Максим', 'новый');



