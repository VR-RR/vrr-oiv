CREATE TABLE bereikbaarheidskaart.generator_bluspomp (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    type_aandrijving varchar(255) NULL,
    sturing varchar(255) NULL,
    druk float8 NULL,
    levering float8 NULL,
    vermogen float8 NULL,
    brandstoftank varchar(255) NULL,
    brandstoftank_inhoud float8 NULL,
    accu_batterij_gewicht_kg float8 NULL,
    opmerking varchar(255) NULL,
    -- metadata velden
    bouwlaag int4 NULL DEFAULT 1,
    symboolgrootte float8 NOT NULL DEFAULT 7,
    symboolrotatie int4 NULL DEFAULT 0,
    naam_aanmaker varchar(255) NULL,
    naam_bewerker varchar(255) NULL,
    datum_aangemaakt timestamp(0) NOT NULL DEFAULT now(),
    datum_gewijzigd timestamp(0) NULL,
    -- geometrie
    geom geometry(POINT, 28992) NOT NULL
);

CREATE INDEX sidx_generator_bluspomp_geom ON bereikbaarheidskaart.generator_bluspomp USING gist (geom);