CREATE TABLE bereikbaarheidskaart.label_aanvulling (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    label varchar(255) NOT NULL,
    opmerking varchar(255) NULL,   
    -- metadata velden
    bouwlaag int4 NULL DEFAULT 0,
    symboolgrootte int4 NOT NULL DEFAULT 7,
    symboolrotatie int4 NULL DEFAULT 0,
    naam_aanmaker varchar(255) NULL,
    naam_bewerker varchar(255) NULL,
    datum_aangemaakt timestamp(0) NOT NULL DEFAULT now(),
    datum_gewijzigd timestamp(0) NULL,
    -- geometrie
    geom geometry(POINT, 28992) NOT NULL
);

CREATE INDEX sidx_label_aanvulling_geom ON bereikbaarheidskaart.label_aanvulling USING gist (geom);