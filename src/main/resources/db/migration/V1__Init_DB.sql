create table hotel_booking (
id_order bigint not null,
email_client varchar(255),
name_client varchar(255),
number_client varchar(255),
primary key (id_order)) engine=MyISAM

create table main_orders (
order_id bigint not null,
name_client varchar(128),
passport_client varchar(100),
soname_client varchar(100),
date_arrive varchar(100),
date_come varchar(100),
swim_pool varchar(10),
gym varchar(10),
spa varchar(10),
primary key (order_id)) engine=MyISAM

create table room_type(
orders_id bigint not null,
type_rooms varchar(255))
engine=MyISAM
create table user_role (
user_id bigint not null,
roles varchar(255)) engine=MyISAM

create table users (
id bigint not null,
activation_code varchar(255),
active bit not null,
email varchar(255),
password varchar(255),
username varchar(255),
 primary key (id)) engine=MyISAM

alter table food_type add constraint FKko08b7fl78ncocanf3ds9ekrc foreign key (orders_id) references main_orders (order_id)
alter table room_type add constraint FKrfvpjqw1pxlg389hulv7d754k foreign key (orders_id) references main_orders (order_id)
alter table user_role add constraint FKj345gk1bovqvfame88rcx7yyx foreign key (user_id) references users (id)