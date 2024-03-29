-- bereikbaarheidskaart.blusleiding definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.blusleiding;

CREATE TABLE bereikbaarheidskaart.blusleiding (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	type_leiding varchar(255) NULL,
	benaming_leiding varchar(255) NULL,
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
	CONSTRAINT blusleiding_pkey PRIMARY KEY (id)
);
CREATE INDEX blusleiding_geom_1621252542757 ON bereikbaarheidskaart.blusleiding USING gist (geom);