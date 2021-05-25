CREATE TABLE bereikbaarheidskaart.blusmiddel (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    blussysteem varchar(255) NULL,
    activering_blussysteem varchar(255) NULL,
    locatie_hoofdafsluiter varchar(255) NULL,
    druk float8 NULL,
    levering_m3_uur float8 NULL,
    gewicht float8 NULL,
    inhoud float8 NULL,
    handblusmiddel varchar(255) NULL,
    brandklassen varchar(255) NULL,
    lengte_brandslanghaspel int4 NULL,
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

CREATE INDEX sidx_blusmiddel_geom ON bereikbaarheidskaart.blusmiddel USING gist (geom);