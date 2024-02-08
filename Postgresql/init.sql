CREATE DATABASE rent_agency;
\c rent_agency;

CREATE TABLE aparment (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(30) NOT NULL,
    name VARCHAR(100) NULL,
    location VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    rooms INT NOT NULL,
    bathrooms INT NOT NULL,
    size INT NOT NULL,
    aparment_images TEXT[] NOT NULL,
    zone_id INT NOT NULL
);

ALTER TABLE aparment ADD PRIMARY KEY (id);
ALTER TABLE aparment ADD CONSTRAINT fk_aparment_zone FOREIGN KEY (zone_id) REFERENCES zone(id);

CREATE TABLE zone (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    zone_type VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    zone_image TEXT NOT NULL,
    city_id INT NOT NULL
);

ALTER TABLE zone ADD PRIMARY KEY (id);

ALTER TABLE zone ADD CONSTRAINT fk_zone_city FOREIGN KEY (city_id) REFERENCES city(id);

CREATE TABLE city (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    image TEXT NOT NULL
);

ALTER TABLE city ADD PRIMARY KEY (id);