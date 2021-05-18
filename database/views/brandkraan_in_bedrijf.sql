CREATE OR REPLACE VIEW bereikbaarheidskaart.brandkraan_in_bedrijf
AS SELECT bereikbaarheidskaart.brandkraan.bronhouder,
    bereikbaarheidskaart.brandkraan.nen3610id,
    bereikbaarheidskaart.brandkraan.volgnummer,
    bereikbaarheidskaart.brandkraan.kraantype,
    bereikbaarheidskaart.brandkraan.x_coordinaat,
    bereikbaarheidskaart.brandkraan.y_coordinaat,
    bereikbaarheidskaart.brandkraan.status,
    bereikbaarheidskaart.brandkraan.ligging,
    bereikbaarheidskaart.brandkraan.spindeltype,
    bereikbaarheidskaart.brandkraan.diameter,
    bereikbaarheidskaart.brandkraan.leidingmateriaal,
    bereikbaarheidskaart.brandkraan.datum_aanleg,
    bereikbaarheidskaart.brandkraan.datum_laatste_inspectie,
    bereikbaarheidskaart.brandkraan.einddatum,
    bereikbaarheidskaart.brandkraan.adres,
    bereikbaarheidskaart.brandkraan.beveiligd,
    bereikbaarheidskaart.brandkraan.gemeentecode,
    bereikbaarheidskaart.brandkraan.gemeentenaam,
    bereikbaarheidskaart.brandkraan.soortleiding,
    bereikbaarheidskaart.brandkraan.mutatiedatum,
    bereikbaarheidskaart.brandkraan.geom
   FROM bereikbaarheidskaart.brandkraan
  WHERE bereikbaarheidskaart.brandkraan.status = 'In bedrijf'::text;