-- bereikbaarheidskaart.brandkraan_in_bedrijf_vrr_gebied definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.brandkraan_in_bedrijf_vrr_gebied;

CREATE TABLE bereikbaarheidskaart.brandkraan_in_bedrijf_vrr_gebied (
	id serial4 NOT NULL,
	-- invulvelden
	bronhouder text NULL,
	nen3610id text NULL,
	volgnummer text NULL,
	kraantype text NULL,
	x_coordinaat float8 NULL,
	y_coordinaat float8 NULL,
	status text NULL,
	ligging text NULL,
	spindeltype text NULL,
	diameter text NULL,
	leidingmateriaal text NULL,
	datum_aanleg text NULL,
	datum_laatste_inspectie text NULL,
	einddatum text NULL,
	adres text NULL,
	beveiligd text NULL,
	gemeentecode text NULL,
	gemeentenaam text NULL,
	soortleiding text NULL,
	-- metadata velden
	mutatiedatum text NULL,
	-- geometrie
	geom public.geometry(point, 28992) NULL,
	CONSTRAINT brandkraan_in_bedrijf_vrr_gebied_pkey PRIMARY KEY (id)
);
CREATE INDEX brandkraan_in_bedrijf_vrr_gebied_geom_1658405500818 ON bereikbaarheidskaart.brandkraan_in_bedrijf_vrr_gebied USING gist (geom);