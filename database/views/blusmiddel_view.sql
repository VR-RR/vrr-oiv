-- bereikbaarheidskaart.blusmiddel_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.blusmiddel_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.blussysteem,
    lay.activering_blussysteem,
    lay.locatie_hoofdafsluiter,
    lay.druk,
    lay.levering_m3_uur,
    lay.gewicht,
    lay.inhoud,
    lay.handblusmiddel,
    lay.brandklassen,
    lay.lengte_brandslanghaspel,
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
   FROM bereikbaarheidskaart.blusmiddel lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;