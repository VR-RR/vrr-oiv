-- bereikbaarheidskaart.alarmering_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.alarmering_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.sturing,
    lay.overige_sturingen,
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
   FROM bereikbaarheidskaart.alarmering lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;