CREATE TABLE bereikbaarheidskaart.waterwinning_aanvulling (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    sturing varchar(255) NULL,
    diameter_leiding int4 NULL,
    druk int4 NULL,
    levering_uur decimal NULL,
    brandkraan_nr varchar(255) NULL,
    brandkraan_aansluiting varchar(255) NULL,
    drukverhoging_ringleiding varchar(255) NULL,
    opvoerpomp_geboorde_put varchar(255) NULL,
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

CREATE INDEX sidx_waterwinning_aanvulling_geom ON bereikbaarheidskaart.waterwinning_aanvulling USING gist (geom);