-- bereikbaarheidskaart.redding_mens_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.redding_mens_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.aantal,
    lay.ruimtenummer,
    lay.aanwezigheidstype,
    lay.mate_zelfredzaamheid,
    lay.aanvulling_zelfredzaamheid,
    lay.aanvulling_beperking,
    lay.tijdvak,
    lay.datum_start,
    lay.datum_eind,
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
   FROM bereikbaarheidskaart.redding_mens lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;