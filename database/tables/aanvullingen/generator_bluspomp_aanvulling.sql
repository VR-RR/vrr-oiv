CREATE TABLE bereikbaarheidskaart.generator_bluspomp_aanvulling (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    type_aandrijving varchar(255) NULL,
    sturing varchar(255) NULL,
    druk int4 NULL,
    levering int4 NULL,
    vermogen int4 NULL,
    brandstoftank varchar(255) NULL,
    brandstoftank_inhoud int4 NULL,
    accu_batterij_gewicht_kg int4 NULL,
    opmerking varchar(255) NULL,
    -- metadata velden
    bouwlaag int4 NULL DEFAULT 1,
    symboolgrootte int4 NOT NULL DEFAULT 7,
    symboolrotatie int4 NULL DEFAULT 0,
    naam_aanmaker varchar(255) NULL,
    naam_bewerker varchar(255) NULL,
    datum_aangemaakt timestamp(0) NOT NULL DEFAULT now(),
    datum_gewijzigd timestamp(0) NULL,
    -- geometrie
    geom geometry(POINT, 28992) NOT NULL
);

CREATE INDEX sidx_generator_bluspomp_aanvulling_geom ON bereikbaarheidskaart.generator_bluspomp_aanvulling USING gist (geom);