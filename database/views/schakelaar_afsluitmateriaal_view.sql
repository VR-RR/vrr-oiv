-- bereikbaarheidskaart.schakelaar_afsluitmateriaal_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.schakelaar_afsluitmateriaal_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.sturing,
    lay.overige_sturing,
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
   FROM bereikbaarheidskaart.schakelaar_afsluitmateriaal lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;