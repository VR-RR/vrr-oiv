-- bereikbaarheidskaart.toegang_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.toegang_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.soort_toetreding,
    lay.sturing,
    lay.toegang,
    lay.hectometrering_cado,
    lay.lift_brancard,
    lay.lift_aandrijving,
    lay.lift_machinekamer,
    lay.bouwlagen_bereikbaar,
    lay.locatie_lift_machinekamer,
    lay.locatie_liftsleutel,
    lay.overdruk_trappenhuis,
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
   FROM bereikbaarheidskaart.toegang lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;