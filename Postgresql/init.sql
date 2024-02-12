CREATE DATABASE rent_agency;
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