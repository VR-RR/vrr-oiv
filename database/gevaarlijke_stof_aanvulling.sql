CREATE TABLE bereikbaarheidskaart.gevaarlijke_stof_aanvulling (
    id SERIAL PRIMARY KEY,
    -- invulvelden
    omschrijving varchar(255) NOT NULL,
    stofnaam varchar(255) NULL,
    gevarenklasse int4 NULL,
    subklasse varchar(255) NULL,
    gevi_code varchar(255) NULL,
    vn_un_nummer varchar(255) NULL,
    cas_nummer varchar(255) NULL,
    etiket varchar(255) NULL,
    eric_kaart varchar(255) NULL,
    hoeveelheid_kg_l decimal NULL,
    locatie varchar(255) NULL,
    ruimtenummer varchar(255) NULL,
    opmerking_stof varchar(255) NULL,
    aggregatie_toestand varchar(255) NULL,
    opslagvorm varchar(255) NULL,
    opslagmateriaal varchar(255) NULL,
    pathogeen varchar(255) NULL,
    verspreidingsmechanismen varchar(255) NULL,
    langetermijn_schade_gevaren varchar(255) NULL,
    milieuschadelijk varchar(255) NULL,
    nfpa_gevarendiamant_brandgevaar varchar(255) NULL,
    nfpa_gevarendiamant_reactiviteit varchar(255) NULL,
    nfpa_gevarendiamant_bijzonder varchar(255) NULL,
    nfpa_gevarendiamant varchar(255) NULL,
    nfpa_gevarendiamant_gezondheid varchar(255) NULL,
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

CREATE INDEX sidx_gevaarlijke_stof_aanvulling_geom ON bereikbaarheidskaart.gevaarlijke_stof_aanvulling USING gist (geom);