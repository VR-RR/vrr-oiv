-- bereikbaarheidskaart.redding_dier definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.redding_dier;

CREATE TABLE bereikbaarheidskaart.redding_dier (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	aanvulling_omschrijving varchar(255) NULL,
	aantal int4 NULL,
	locatie varchar(255) NULL,
	tijdvak varchar(255) NULL,
	datum_start timestamp NULL,
	datum_eind timestamp NULL,
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
	CONSTRAINT redding_dier_pkey PRIMARY KEY (id)
);
CREATE INDEX redding_dier_geom_1621253107518 ON bereikbaarheidskaart.redding_dier USING gist (geom);