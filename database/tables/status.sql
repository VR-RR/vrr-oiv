CREATE TABLE bereikbaarheidskaart.status (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    status varchar(255) NOT NULL,
    -- metadata velden
    naam_aanmaker varchar(255) NULL,
    naam_bewerker varchar(255) NULL,
    datum_aangemaakt timestamp(0) NOT NULL DEFAULT now(),
    datum_gewijzigd timestamp(0) NULL,
    -- geometrie
    geom geometry(POLYGON, 28992) NOT NULL
);

CREATE INDEX sidx_status_geom ON bereikbaarheidskaart.status USING gist (geom);