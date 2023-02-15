-- bereikbaarheidskaart.brandkraan definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.brandkraan;

CREATE TABLE bereikbaarheidskaart.brandkraan (
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
	CONSTRAINT brandkraan_pkey PRIMARY KEY (id)
);
CREATE INDEX brandkraan_geom_1621261663670 ON bereikbaarheidskaart.brandkraan USING gist (geom);