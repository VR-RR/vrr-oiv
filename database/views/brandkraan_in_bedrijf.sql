-- bereikbaarheidskaart.brandkraan_in_bedrijf source

CREATE OR REPLACE VIEW bereikbaarheidskaart.brandkraan_in_bedrijf
AS SELECT brandkraan.bronhouder,
    brandkraan.nen3610id,
    brandkraan.volgnummer,
    brandkraan.kraantype,
    brandkraan.x_coordinaat,
    brandkraan.y_coordinaat,
    brandkraan.status,
    brandkraan.ligging,
    brandkraan.spindeltype,
    brandkraan.diameter,
    brandkraan.leidingmateriaal,
    brandkraan.datum_aanleg,
    brandkraan.datum_laatste_inspectie,
    brandkraan.einddatum,
    brandkraan.adres,
    brandkraan.beveiligd,
    brandkraan.gemeentecode,
    brandkraan.gemeentenaam,
    brandkraan.soortleiding,
    brandkraan.mutatiedatum,
    brandkraan.geom
   FROM bereikbaarheidskaart.brandkraan
  WHERE brandkraan.status = 'In bedrijf'::text;