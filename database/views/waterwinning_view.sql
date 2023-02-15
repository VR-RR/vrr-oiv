-- bereikbaarheidskaart.waterwinning_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.waterwinning_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.sturing,
    lay.diameter_leiding,
    lay.druk,
    lay.levering_uur,
    lay.brandkraan_nr,
    lay.brandkraan_aansluiting,
    lay.drukverhoging_ringleiding,
    lay.opvoerpomp_geboorde_put,
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
   FROM bereikbaarheidskaart.waterwinning lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;