-- bereikbaarheidskaart.waarschuwing_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.waarschuwing_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.omschrijving_gevaar,
    lay.ruimte,
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
   FROM bereikbaarheidskaart.waarschuwing lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;