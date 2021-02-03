CREATE TABLE bereikbaarheidskaart.toegang (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    soort_toetreding varchar(255) NULL,
    sturing varchar(255) NULL,
    toegang varchar(255) NULL,
    hectometrering_cado varchar(255) NULL,
    lift_brancard varchar(100) NULL,
    lift_aandrijving varchar(255) NULL,
    lift_machinekamer varchar(255) NULL,
    bouwlagen_bereikbaar varchar(255) NULL,
    locatie_lift_machinekamer varchar(255) NULL,
    locatie_liftsleutel varchar(255) NULL,
    overdruk_trappenhuis varchar(255) NULL,
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

CREATE INDEX sidx_toegang_geom ON bereikbaarheidskaart.toegang USING gist (geom);