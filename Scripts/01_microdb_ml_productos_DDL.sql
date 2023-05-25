/* ----------------------------------------------
 * ------ MICRODB MERCADOLIBRE PRODUCTOS---------
 * ----------------------------------------------
 * 
 * 
 * ========= DDL =============
 */

-- DATABASE
drop database if exists microdb_mercadolibre_productos;

create database microdb_mercadolibre_productos;

use microdb_mercadolibre_productos;

-- TABLES
drop table if exists products;
drop table if exists products_details;
drop table if exists products_specifications;
drop table if exists products_pictures;



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla products ===========


create table products(
	
id int(12) auto_increment primary key,
site_id varchar(20) NOT NULL,
title varchar(400) NOT NULL,
subtitle varchar(500) default NULL,
seller_id int(20) NOT NULL,
category_id varchar(100) not NULL,
official_store_id varchar(100) default NULL,
price decimal(6,3) NOT NULL,
base_price decimal(6,3) NOT NULL,
original_price decimal(6,3) NOT NULL,
initial_quantity int(10) NOT NULL,
available_quantity int(10) NOT NULL,
creation_date datetime not null,
update_date datetime not NULL
);

-- ======= Restricciones Tabla products ===========

-- UNIQUE ID
alter table products 
add constraint UNIQUE_products_id
unique(id);


-- UNIQUE TITLE_SUBTITLE
alter table products 
add constraint UNIQUE_products_title_subtitle
unique(title,subtitle);


-- CHECK UPDATE_DATE
alter table products
add constraint CHECK_products_update_date
check (update_date >= creation_date);



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla products_details ===========


create table products_details(
	
id int(12) auto_increment primary key,
product_id int(12) NOT NULL,
description varchar(4000),
status varchar(20) NOT NULL,
warranty varchar(20) NOT NULL,
sold_quantity int(10) default NULL,
buyind_mode varchar(50) DEFAULT NULL,
listing_type_id varchar(50) DEFAULT NULL,
product_condition varchar(50) DEFAULT NULL,
permalink varchar(1000) DEFAULT NULL,
thumbnail_id varchar(1000) DEFAULT NULL,
thumbnail varchar(1000) DEFAULT NULL,
secure_thumbnail varchar(500) DEFAULT NULL,
creation_date datetime not null,
update_date datetime not null,
stop_time datetime not null
);

-- ======= Restricciones Tabla productos_details ===========

-- UNIQUE ID
alter table products_details 
add constraint UNIQUE_products_details_id
unique(id);

-- UNIQUE PRODUCT_ID
alter table products_details 
add constraint UNIQUE_products_details_product_id
unique(product_id);


-- FK PRODUCTS
alter table products_details 
add constraint FK_products_details_product_id 
foreign key(product_id)
references products(id)
ON DELETE CASCADE;


-- CHECK UPDATE_DATE
alter table products_details
add constraint CHECK_products_details_update_date
check (update_date >= creation_date);


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla products_specifications ===========


create table products_specifications(	

id int(12) auto_increment primary key,
product_id int(12) NOT NULL,
specification_uuid varchar(500) NOT null,
stop_time datetime not null,
creation_date datetime not null,
update_date datetime not null

);


-- ======= Restricciones Tabla productos_specifications ===========

-- UNIQUE ID
alter table products_specifications
add constraint UNIQUE_products_specifications_id
unique(id);


-- UNIQUE PRODUCT_ID
alter table products_specifications 
add constraint UNIQUE_products_specifications_product_id
unique(product_id);


-- FK PRODUCTS
alter table products_specifications 
add constraint FK_products_specifications_id 
foreign key(product_id)
references products(id)
ON DELETE CASCADE;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ======= Tabla products_pictures ===========


create table products_pictures(

id int(12) auto_increment primary key,
product_id int(12) NOT NULL,
pictures_uuids varchar(500) NOT null,
stop_time datetime not null,
creation_date datetime not null,
update_date datetime not null
);
-- ======= Restricciones Tabla products_pictures ===========

-- UNIQUE ID
alter table products_pictures
add constraint UNIQUE_products_pictures_id
unique(id);

-- UNIQUE PRODUCT_ID
alter table products_pictures 
add constraint UNIQUE_products_pictures_product_id
unique(product_id);


-- FK PRODUCTS
alter table products_pictures
add constraint FK_products_pictures_id 
foreign key(product_id)
references products(id)
ON DELETE CASCADE;




