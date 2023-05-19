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

-- VARS
SET @created_at = now();
SET @updated_at = now();
set @first_stop_time = '2045-02-10 10:15';
set @second_stop_time = '2055-02-10 10:15';



insert into products (id, site_id, title, subtitle, seller_id, category_id
, official_store_id, price, base_price, original_price, initial_quantity
, available_quantity, creation_date, update_date) values
(1, 'MLA', 'Zapatilla Fila Heating Mujer', null, 1, 'MLA109027', null, 26.000, 26.000, 26.000
, 200, 180, @created_at, @updated_at),
(2, 'MLA', 'Lavavajillas Whirlpool WSFO3T2 de 10 cubiertos blanco 220V - 240V', null , 2, 'MLA15293581', 'MLA-89902122122', 152.999, 287.499, 287.499
, 320, 280, @created_at, @updated_at),
(3, 'MLA', 'Smart Tv Noblex Dk43x7100pi Led 43'' Full Hd Con Android Tv', null, 3, 'MLA19712050', null, 89.999, 
109.999, 109.999, 900, 450, @created_at, @updated_at),
(4, 'MLA', 'Conjunto Deportivo Fila Sport Slim Training', null, 3, 'MLA1222112', 'MLA-1156522165', 20.679, 
20.679, 20.679, 300, 249, @created_at, @updated_at),
(5, 'MLA', 'Bomba Sumergible 0,5 Hp', 'Bomba Sumergible Pozo Napa 2 Pulgadas 0,5 Hp 1000 L/h Cable', 4 ,'MLA-1106811056', 'MLA1726621', 50.874, 
121.238, 121.238, 450, 320, @created_at, @updated_at),
(6, 'MLA', 'Xiaomi Mi Smart Band 7 1.62', 'Xiaomi Mi Smart Band 7 1.62" caja negra, malla negra', 4 , 'MLA-88754346', 'MLA4353222', 
20.800, 20.800, 20.800, 1200, 680, @created_at, @updated_at),
(7, 'MLA', 'Xiaomi Imilab KW66 Smart Watch 1.28 " 45.3 mm', 'Smartwatch Imilab KW66 Smart Watch 1.28" caja 45.3mm de aleación de zinc black, malla black de silicona'
, 5 , 'MLA-22212314', 'MLA2323231', 
19.650, 19.650, 19.650, 3340, 221, @created_at, @updated_at);


insert into products_details(id, product_id, description,  status, warranty, sold_quantity, buyind_mode
, listing_type_id, product_condition, permalink, thumbnail_id, thumbnail, secure_thumbnail
, creation_date, update_date, stop_time
) values 
(1, 1, 'Las zapatillas Fila Heating fueron desarrolladas para satisfacer las necesidades del corredor principiante en busca de zapatos suaves y comodos. Tiene una entresuela ENERGIZED PLUS con lineas inspiradas en el modelo FLOAT FLY.'
,'active', 'active', 10, 'buy_it_now', 'gold_pro', 'new'
, 'https://articulo.mercadolibre.com.ar/MLA-1153631308-zapatilla-fila-heating-mujer-_JM#position=3&search_layout=grid&type=item&tracking_id=66f135cf-8c27-4525-8aca-ab25a135c330'
, 'D_NQ_NP_2X_617004-MLA51183451244_082022-F' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_617004-MLA51183451244_082022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_617004-MLA51183451244_082022-F.webp'
, @created_at, @updated_at, @first_stop_time),
(2, 2, 'Whirpool es sinónimo de trayectoria y experiencia. Es una marca líder mundial en la comercialización de electrodomésticos que orienta su trabajo en la tecnología, el diseño y la innovación para mejorar la calidad de vida.'
,'active', 'active', 15, 'buy_it_now', 'gold_pro', 'new'
, 'https://www.mercadolibre.com.ar/lavavajillas-whirlpool-wsfo3t2-de-10-cubiertos-blanco-220v-240v/p/MLA15293581?pdp_filters=deal:MLA779357-1#searchVariation=MLA15293581&position=2&search_layout=grid&type=product&tracking_id=f7a61904-12a1-402c-a295-d4a3151eadb2&c_id=/home/promotions-recommendations/element&c_element_order=2&c_uid=e3242406-63e4-4624-8070-b9d14e33b688'
, 'D_NQ_NP_2X_714757-MLA40252763712_122019-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_714757-MLA40252763712_122019-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_714757-MLA40252763712_122019-F.webp'
, @created_at, @updated_at, @first_stop_time),
(3, 3, null, 'active', 'active', 240, 'buy_it_now', 'gold_pro', 'new'
, 'https://www.mercadolibre.com.ar/smart-tv-noblex-dk43x7100pi-led-43-full-hd-con-android-tv/p/MLA19712050?pdp_filters=deal:MLA779357-1#searchVariation=MLA19712050&position=3&search_layout=grid&type=product&tracking_id=f7a61904-12a1-402c-a295-d4a3151eadb2&c_id=/home/promotions-recommendations/element&c_element_order=3&c_uid=26c49e51-fd1c-4bdc-803f-d6be35a64299'
, 'D_NQ_NP_2X_794572-MLA52024171766_102022-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_794572-MLA52024171766_102022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_794572-MLA52024171766_102022-F.webp'
, @created_at, @updated_at, @first_stop_time),
(4, 4, 'Conjunto Deportivo Fila Sport Slim Training', 'active', 'active', 30, 'buy_it_now', 'platinium_pro', 'new'
, 'https://articulo.mercadolibre.com.ar/MLA-1156522165-conjunto-deportivo-fila-sport-slim-training-_JM?variation=175090228881#reco_item_pos=1&reco_backend=machinalis-homes-pdp-boos&reco_backend_type=function&reco_client=home_second-best-navigation-trend-recommendations&reco_id=efaa8978-6ece-4c6a-80a6-fefce0e7c0a2&c_id=/home/second-best-navigation-trends-recommendations/element&c_element_order=2&c_uid=8ec615ac-f190-4ed5-8e25-20ed2e1cc785'
, 'D_NQ_NP_2X_751588-MLA51242153250_082022-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_751588-MLA51242153250_082022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_751588-MLA51242153250_082022-F.webp'
, @created_at, @updated_at, @first_stop_time),
(5, 5, 'Bomba De Agua Sumergible Para Pozo Femmto 2 Pulgadas - 0,5 HP - 55 Metros - 1000 Litros Por Hora', 'active', 'active', 56, 'buy_it_now', 'platinium_pro', 'new'
, 'https://articulo.mercadolibre.com.ar/MLA-1106811056-bomba-sumergible-pozo-napa-2-pulgadas-05-hp-1000-lh-cable-_JM#position=39&search_layout=grid&type=item&tracking_id=2aeefa8f-4654-42de-9e79-798f3cd80bff&c_id=/home/promotions-recommendations/element&c_element_order=10&c_uid=3b5a921f-1b12-4d4b-894f-f14050bc79a3'
, 'D_NQ_NP_2X_692766-MLA49850105082_052022-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_692766-MLA49850105082_052022-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_692766-MLA49850105082_052022-F.webp'
, @created_at, @updated_at, @first_stop_time),
(6, 6, 'Con 10 años de trayectoria, Xiaomi se posiciona como uno de los líderes indiscutidos en el mercado de los smartwatches. Sus productos se destacan por la calidad, el diseño sencillo y muy buenas prestaciones. La Mi Band tiene todo lo necesario para acompañarte en tu rutina.'
, 'active', 'active', 345, 'buy_it_now', 'gold_pro', 'new'
, 'https://www.mercadolibre.com.ar/xiaomi-mi-smart-band-7-162-caja-negra-malla-negra/p/MLA19174175#reco_item_pos=2&reco_backend=machinalis-pdp-domains&reco_backend_type=low_level&reco_client=pdp-other-domain&reco_id=138439ab-b1ec-4b59-805a-8a329e45a42d'
, 'D_NQ_NP_2X_974754-MLA54925550069_042023-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_974754-MLA54925550069_042023-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_974754-MLA54925550069_042023-F.webp'
, @created_at, @updated_at, @first_stop_time),
(7, 7, 'Tecnología, calidad y sofisticación definen al smartwatch de Imilab. Sus diferentes funcionalidades logran que este reloj inteligente se convierta en un nuevo aliado para acompañarte en tu rutina de deporte, trabajo y ocio.'
, 'active', 'active', 221, 'buy_it_now', 'gold_pro', 'new'
, 'https://www.mercadolibre.com.ar/smartwatch-imilab-kw66-smart-watch-128-caja-453mm-de-aleacion-de-zinc-black-malla-black-de-silicona/p/MLA16597584#reco_item_pos=2&reco_backend=univb-pdp_marketplace&reco_backend_type=low_level&reco_client=pdp-v2p&reco_id=f96e0561-45f3-46d1-a464-3f7e778907fe'
, 'D_NQ_NP_2X_684664-MLA44922050344_022021-F.webp' 
, 'https://http2.mlstatic.com/D_NQ_NP_2X_684664-MLA44922050344_022021-F.webp'
, 'https://http2.mlstatic.com/D_NQ_NP_2X_684664-MLA44922050344_022021-F.webp'
, @created_at, @updated_at, @first_stop_time);

-- For bucket s3
insert into products_specifications (id, product_id, specification_uuid, stop_time, creation_date, update_date ) values
(1, 1, 'a4b228ec-7abe-4487-9825-85a883fc48d5', @second_stop_time, @created_at, @updated_at),
(2, 2, '858f4698-fc01-4cde-9f58-feabc7ca680c', @second_stop_time, @created_at, @updated_at),
(3, 3, '5ebbe657-e7d2-4e21-85ea-d0e9ad896746', @second_stop_time, @created_at, @updated_at),
(4, 4, '6060485c-6f79-4629-a640-87391832723e', @second_stop_time, @created_at, @updated_at),
(5, 5, '8ddde670-44bb-4a5b-8f77-b4cdbfe667e5', @second_stop_time, @created_at, @updated_at),
(6, 6, 'a4b228ec-7abe-4487-9825-85a883fc48d5', @second_stop_time, @created_at, @updated_at),
(7, 7, '858f4698-fc01-4cde-9f58-feabc7ca680c', @second_stop_time, @created_at, @updated_at);


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
insert into products_pictures (id, product_id, pictures_uuids, stop_time, creation_date, update_date ) values
(1, 1, '123e4567-e89b-12d3-a456-4266141, f4c96615-87fb-457f-a157-71d6a6686300, 5df62bfb-d96e-4308-97c6-b7544abbd085'
, @second_stop_time, @created_at, @updated_at ),
(2, 2, 'aad77e92-5861-4e88-b4e2-51d97e5a140d, 1deb0bf1-d07c-4327-bcb3-f2bab1c6045b, 5df62bfb-d96e-4308-97c6-b7544abbd085, ec3257cb-0d4d-40dd-be7d-28d589b02dec'
, @second_stop_time, @created_at, @updated_at ),
(3, 3, '8732cc6b-6de7-413c-879e-0e6c22578207, 8ddde670-44bb-4a5b-8f77-b4cdbfe667e5'
, @second_stop_time, @created_at, @updated_at),
(4, 4, '65109e61-22fb-4a0c-a9a7-073609b9dacb, 6060485c-6f79-4629-a640-87391832723e, 040f3daf-add6-4808-ac73-33fd1742d54b'
, @second_stop_time, @created_at, @updated_at),
(5, 5, 'a632d45d-e3f9-47e0-b0ab-14931a09e352, c72b83ff-703e-47cf-8c35-b71b8a7f27aa, e423e0db-6352-42d1-82e1-2ce6c0a0cf99'
, @second_stop_time, @created_at, @updated_at),
(6, 6, '8ddde670-44bb-4a5b-8f77-b4cdbfe667e5, 1deb0bf1-d07c-4327-bcb3-f2bab1c6045b, 5df62bfb-d96e-4308-97c6-b7544abbd085, 123e4567-e89b-12d3-a456-4266141'
, @second_stop_time, @created_at, @updated_at),
(7, 7, 'aad77e92-5861-4e88-b4e2-51d97e5a140d, 6060485c-6f79-4629-a640-87391832723e, 2ce6c0a0cf99-97c6-b7544abbd085, 5df62bfb-d96e-4308-97c6-b7544abbd085'
, @second_stop_time, @created_at, @updated_at);

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
