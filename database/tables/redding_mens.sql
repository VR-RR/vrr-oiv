CREATE TABLE bereikbaarheidskaart.redding_mens (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    aantal int4 NULL,
    ruimtenummer varchar(255) NULL,
    aanwezigheidstype varchar(255) NULL,
    mate_zelfredzaamheid varchar(255) NULL,
    aanvulling_zelfredzaamheid varchar(255) NULL,
    aanvulling_beperking varchar(255) NULL,
    tijdvak varchar(255) NULL,
    datum_start timestamp NULL,
    datum_eind timestamp NULL,
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

CREATE INDEX sidx_redding_mens_geom ON bereikbaarheidskaart.redding_mens USING gist (geom);