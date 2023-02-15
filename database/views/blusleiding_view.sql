-- bereikbaarheidskaart.blusleiding_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.blusleiding_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.type_leiding,
    lay.benaming_leiding,
    lay.opmerking,
    lay.bouwlaag,
    lay.symboolgrootte,
    lay.symboolrotatie,
    lay.naam_aanmaker,
    lay.naam_bewerker,
    lay.datum_aangemaakt,
    lay.datum_gewijzigd,
    lay.geom,
    lay.categorie_dbk
   FROM bereikbaarheidskaart.blusleiding lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;