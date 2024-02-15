\c rent_agency;

CREATE TABLE cities_city (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    image TEXT NOT NULL
);

CREATE TABLE cities_zone (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    zone_type VARCHAR(255) NOT NULL,
    zone_image VARCHAR(255) NOT NULL,
    city_id INT NOT NULL
);

ALTER TABLE cities_zone ADD CONSTRAINT fk_zone_city FOREIGN KEY (city_id) REFERENCES cities_city(id);

CREATE TABLE cities_apartment (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(30) NOT NULL,
    name VARCHAR(255) NULL,
    location VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    rooms INT NOT NULL,
    bathrooms INT NOT NULL,
    size INT NOT NULL,
    aparment_images TEXT[] NOT NULL,
    zone_id INT NOT NULL
);

ALTER TABLE cities_apartment ADD CONSTRAINT fk_aparment_zone FOREIGN KEY (zone_id) REFERENCES cities_zone(id);

INSERT INTO cities_city VALUES
(1, 'valenciauksnf3', 'Valencia', 'Comunidad Valenciana', 'España', 'https://img.freepik.com/fotos-premium/ciudad-artes-ciencias-valencia-espana_182029-379.jpg?size=626&ext=jpg&ga=GA1.1.699855526.1706632202&semt=sph'),
(2, 'granadaorhdkq', 'Granada', 'Andalucia', 'España', 'https://img.freepik.com/fotos-premium/alhambra-al-atardecer-granada-andalucia-espana_218319-7373.jpg?size=626&ext=jpg&ga=GA1.1.699855526.1706632202&semt=sph'),
(3, 'tenerife1f9e5p', 'Tenerife', 'Islas Canarias', 'España', 'https://img.freepik.com/foto-gratis/carretera-rodeada-colinas-cielo-nublado_181624-10742.jpg?size=626&ext=jpg&ga=GA1.1.699855526.1706632202&semt=ais'),
(4, 'bilbaogw2o9l', 'Bilbao', 'Pais Vasco', 'España', 'https://img.freepik.com/fotos-premium/arquitectura-museo-guggenheim-bilbao-bilbao-pais-vasco-espana-destinos-viaje_73485-5203.jpg?size=626&ext=jpg&ga=GA1.1.699855526.1706632202&semt=sph');

INSERT INTO cities_zone VALUES
(1, 'benimacletlifnqn', 'Benimaclet', 'Centro Ciudad', 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Pla%C3%A7a_de_Benimaclet.JPG', 1),
(2, 'portugaleteoopv81', 'Portugalete', 'Costa', 'https://img.freepik.com/fotos-premium/vista-ciudad-portugalete-junto-al-rio-nervion-basilica-sandra-maria-pais-vasco-espana_189051-692.jpg?size=626&ext=jpg&ga=GA1.1.538549226.1706726558&semt=sph', 4),
(3, 'albaicin6ar8bg', 'Albaicín', 'Rural', 'https://img.freepik.com/fotos-premium/pintoresco-distrito-albaicin-granada-soleada-tarde-verano-andalucia-espana_1029239-4413.jpg?size=626&ext=jpg&ga=GA1.1.538549226.1706726558&semt=sph', 2),
(4, 'san-andresle9tv2', 'San Andres', 'Costa', 'https://img.freepik.com/foto-gratis/hermosa-vista-aerea-vista-playa-teresitas-isla-tenerife_181624-39218.jpg', 3);

INSERT INTO cities_apartment VALUES
(2,'ka0mqt','','C/ d''Utiel, 3, Benimaclet',560,4,2,140,'{"https://static.fotocasa.es/images/ads/1a7c1066-3ad7-4e53-b0e2-abbde9fa3927?rule=web_948x542","https://static.fotocasa.es/images/ads/19ffddef-9010-4cf0-b142-3819c1e9a8b4?rule=web_1200x0","https://static.fotocasa.es/images/ads/2457337f-cdbc-454e-8452-7a6b00c520cb?rule=web_1200x0","https://static.fotocasa.es/images/ads/8eb59d63-5a44-4e0a-9fd7-b9261eaa263a?rule=web_1200x0"}',1),
(4,'t00o4n','','Calle de Valencia, 12, La Salle',1300,5,4,1040,'{"https://static.fotocasa.es/images/ads/63c79148-3b13-49bd-9bdb-02ad59710c9e?rule=web_1200x0","https://static.fotocasa.es/images/ads/4f6f0bda-b90d-4cf1-ab00-7e868bd4e764?rule=web_1200x0","https://static.fotocasa.es/images/ads/ba7cd7ac-8c6d-48d4-b54f-0a2941d378e6?rule=web_1200x0","https://static.fotocasa.es/images/ads/20aa2fd1-f31b-4fe1-9ce0-7d6fce925ba7?rule=web_1200x0","https://static.fotocasa.es/images/ads/3c27772e-3049-4a4e-809c-fa787fbe6fe8?rule=web_1200x0","https://static.fotocasa.es/images/ads/4862405e-9b00-42bc-be67-2364e1be58a7?rule=web_1200x0","https://static.fotocasa.es/images/ads/af57a657-c2d0-4803-bfa3-20f85f726cc8?rule=web_1200x0"}',3),
(3,'9i8pcd','','Correos Kalea, 3, Portugalete',560,4,2,140,'{"https://static.inmofactory.com/images/inmofactory/documents/1/132510/33494581/639017495.jpg?rule=web_1200x0","https://static.inmofactory.com/images/inmofactory/documents/1/132510/33494581/639017502.jpg?rule=web_1200x0","https://static.inmofactory.com/images/inmofactory/documents/1/132510/33494581/639017507.jpg?rule=web_1200x0","https://static.inmofactory.com/images/inmofactory/documents/1/132510/33494581/639017510.jpg?rule=web_1200x0"}',2),
(5,'doelw3','','Calle Elvira, 24, Albaicín',950,5,4,170,'{"https://media.istockphoto.com/id/1177797403/es/foto/modernos-edificios-de-apartamentos-en-un-d%C3%ADa-soleado-con-un-cielo-azul.jpg?s=612x612&w=0&k=20&c=Fra2VpMhyZ7Zl11TZqQ6EBoj3k3_ramtPWUayVW1Nmg","https://media.istockphoto.com/id/1182454657/es/foto/interior-de-la-sala-de-estar-bohemia-renderizado-3d.jpg?s=612x612&w=0&k=20&c=tX-OH_elOIg1yNoGAuyLWybC6hKX02B2kEEq7RI02ug","https://media.istockphoto.com/id/1289883686/es/foto/amplio-apartamento-con-ventana-de-pared.jpg?s=612x612&w=0&k=20&c=zNAdPrSCCetx54G2Tk-ONxAakgNMEeKqW59775eX118","https://media.istockphoto.com/id/1036068800/es/foto/eco-algod%C3%B3n-lino-y-manta-sobre-una-cama-en-la-naturaleza-amantes-de-la-casa-de-hu%C3%A9spedes.jpg?s=612x612&w=0&k=20&c=MLmIrhmBS0GCX-dHswCbGFl7vdO7AYSrSU4-iLqdTMs"}',3);