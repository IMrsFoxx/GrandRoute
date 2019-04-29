create table hotel_booking (
id_order bigint not null,
email_client varchar(255) not null,
name_client varchar(255) not null,
number_client varchar(255)  not null,
primary key (id_order));

create table main_orders (
order_id bigint not null,
name_client varchar(128) not null,
passport_client varchar(100) not null,
soname_client varchar(100) not null,
date_arrive varchar(100) not null,
date_come varchar(100) not null,
swim_pool varchar(10) not null,
gym varchar(10) not null,
spa varchar(10) not null,
primary key (order_id));

create table room_type(
orders_id bigint not null,
type_rooms varchar(255) not null
);

create table user_role (
user_id bigint not null,
roles varchar(255));

create table users (
id bigint not null,
activation_code varchar(255),
active bit not null,
email varchar(255) not null,
password varchar(255) not null,
username varchar(255) not null,
 primary key (id));

alter table food_type add constraint FKko08b7fl78ncocanf3ds9ekrc foreign key (orders_id) references main_orders (order_id);
alter table room_type add constraint FKrfvpjqw1pxlg389hulv7d754k foreign key (orders_id) references main_orders (order_id);
alter table user_role add constraint FKj345gk1bovqvfame88rcx7yyx foreign key (user_id) references users (id);