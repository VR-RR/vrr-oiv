-- bereikbaarheidskaart.bouwlaag_v source

CREATE OR REPLACE VIEW bereikbaarheidskaart.bouwlaag_v
AS SELECT bouwlaag_view.id,
        CASE
            WHEN bouwlaag_view.bouwlaag < 0 THEN bouwlaag_view.bouwlaag
            ELSE bouwlaag_view.bouwlaag + 1
        END AS bouwlaag,
    bouwlaag_view.bouwlaag AS verdieping,
    bouwlaag_view.naam_aanmaker,
    bouwlaag_view.naam_bewerker,
    bouwlaag_view.datum_aangemaakt,
    bouwlaag_view.datum_gewijzigd,
    bouwlaag_view.geom,
    bouwlaag_view.categorie_dbk
   FROM bereikbaarheidskaart.bouwlaag_view
  WHERE bouwlaag_view.categorie_dbk::text <> 'metro'::text AND bouwlaag_view.categorie_dbk::text <> 'spoor'::text AND bouwlaag_view.categorie_dbk::text <> 'metro_annotatie'::text OR bouwlaag_view.categorie_dbk IS NULL;