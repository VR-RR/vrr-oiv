CREATE TABLE bereikbaarheidskaart.muur (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    -- metadata velden
    naam_aanmaker varchar(255) NULL,
    naam_bewerker varchar(255) NULL,
    datum_aangemaakt timestamp(0) NOT NULL DEFAULT now(),
    datum_gewijzigd timestamp(0) NULL,
    -- geometrie
    geom geometry(MULTILINESTRING, 28992) NOT NULL
);

CREATE INDEX sidx_muur_geom ON bereikbaarheidskaart.muur USING gist (geom);