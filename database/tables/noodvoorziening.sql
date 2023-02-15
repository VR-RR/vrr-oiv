-- bereikbaarheidskaart.noodvoorziening definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.noodvoorziening;

CREATE TABLE bereikbaarheidskaart.noodvoorziening (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	overdruk_trappenhuis varchar(255) NULL,
	bouwlagen_bereikbaar varchar(255) NULL,
	opmerking varchar(255) NULL,
	-- metadata velden
	bouwlaag int4 NULL,
	symboolgrootte float8 NULL,
	symboolrotatie int4 NULL,
	naam_aanmaker varchar(255) NULL,
	naam_bewerker varchar(255) NULL,
	datum_aangemaakt timestamp NULL,
	datum_gewijzigd timestamp NULL,
	-- geometrie
	geom public.geometry(point, 28992) NULL,
	categorie_dbk varchar(255) NULL DEFAULT 'algemeen'::character varying,
	CONSTRAINT noodvoorziening_pkey PRIMARY KEY (id)
);
CREATE INDEX noodvoorziening_geom_1621253068416 ON bereikbaarheidskaart.noodvoorziening USING gist (geom);