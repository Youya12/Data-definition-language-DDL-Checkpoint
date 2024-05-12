create table customer (
customer_id varchar(20) primary key,
customer_name varchar (20) not null, 
customer_tel integer);

create table product (
product_id varchar (20) primary key, 
product_name varchar (20) not null, 
price decimal check (price>0));

create table orders (
  order_id int primary key auto_increment,
  quantity integer,
  total_amount decimal (10,2),
  customer_id varchar (20),
  product_id varchar (20),
  foreign key (customer_id) references customer(customer_id),
  foreign key (product_id) references product(product_id)
);

alter table product add category varchar (20);

alter table orders add OrderDate timestamp default current_timestamp;