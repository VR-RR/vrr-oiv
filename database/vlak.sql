CREATE TABLE bereikbaarheidskaart.vlak (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    -- metadata velden
    bouwlaag int4 NULL DEFAULT 1,
    naam_aanmaker varchar(255) NULL,
    naam_bewerker varchar(255) NULL,
    datum_aangemaakt timestamp(0) NOT NULL DEFAULT now(),
    datum_gewijzigd timestamp(0) NULL,
    -- geometrie
    geom geometry(MULTIPOLYGON, 28992) NOT NULL
);

CREATE INDEX sidx_vlak_geom ON bereikbaarheidskaart.vlak USING gist (geom);