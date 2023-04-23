/* ----------------------------------------------
 * ------ MICRODB MERCADOLIBRE PRODUCTOS---------
 * ----------------------------------------------
 * 
 * 
 * ========= DML INSERTS=============
 */



-- DATABASE
use microdb_mercadolibre_productos;

-- TABLES
delete from products;
delete from products_details;
delete from products_specifications;
delete from products_pictures;


insert into products (id, site_id, title, subtitle, seller_id, category_id
, official_store_id,  price, base_price, original_price, initial_quantity
, available_quantity, creation_date, update_date) values
(1, "MLA", "Zapatilla Fila Heating Mujer", null, 1, "MLA109027", null, 26000, 26000, 26000
, 200, 180, now(), now());


insert into products_details(id, product_id, description,  status, warranty, sold_quantity, buyind_mode
, listing_type_id, product_condition, permalink, thumbnail_id, thumbnail, secure_thumbnail
, creation_date, update_date, stop_time
) values 
(1, 1, 'Las zapatillas Fila Heating fueron desarrolladas para satisfacer las necesidades del corredor principiante en busca de zapatos suaves y comodos. Tiene una entresuela ENERGIZED PLUS con lineas inspiradas en el modelo FLOAT FLY.'
,'active', 'active', 10, 'buy_it_now', 'gold_pro', 'new', 'https://articulo.mercadolibre.com.ar/MLA-1153631308-zapatilla-fila-heating-mujer-_JM#position=3&search_layout=grid&type=item&tracking_id=66f135cf-8c27-4525-8aca-ab25a135c330'
, 'D_NQ_NP_2X_617004-MLA51183451244_082022-F' , 'https://http2.mlstatic.com/D_NQ_NP_2X_617004-MLA51183451244_082022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_617004-MLA51183451244_082022-F.webp', now(), now(), '2045-02-10 10:15');

-- For bucket s3
insert into products_specifications (id, product_id, specification_uuid ) values
(1, 1, 'a4b228ec-7abe-4487-9825-85a883fc48d5' );

/*example
"specifications": [
       {
           "id": "113513-LLS49868862376_0520223",
           "type": "pdf",
           "content" : "value"
       }
   ],
*/


-- For bucket s3
insert into products_pictures (id, product_id, pictures_uuids ) values
(1, 1, '123e4567-e89b-12d3-a456-4266141, f4c96615-87fb-457f-a157-71d6a6686300, 5df62bfb-d96e-4308-97c6-b7544abbd085' );

/*example
"pictures": [
       {
           "id": "963513-MLA49868862376_052022",
           "url": "http://http2.mlstatic.com/D_963513-MLA49868862376_052022-O.jpg",
           "secure_url": "https://http2.mlstatic.com/D_963513-MLA49868862376_052022-O.jpg",
           "size": "500x411",
           "max_size": "898x739",
           "quality": ""
       }
   ],
*/