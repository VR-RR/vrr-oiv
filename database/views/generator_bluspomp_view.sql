-- bereikbaarheidskaart.generator_bluspomp_view source

CREATE OR REPLACE VIEW bereikbaarheidskaart.generator_bluspomp_view
AS SELECT lay.id,
    lay.omschrijving,
    lay.type_aandrijving,
    lay.sturing,
    lay.druk,
    lay.levering,
    lay.vermogen,
    lay.brandstoftank,
    lay.brandstoftank_inhoud,
    lay.accu_batterij_gewicht_kg,
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
   FROM bereikbaarheidskaart.generator_bluspomp lay
     LEFT JOIN bereikbaarheidskaart.status c ON st_within(lay.geom, c.geom) AND c.status::text = 'concept'::text
  WHERE c.id IS NULL;