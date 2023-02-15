-- bereikbaarheidskaart.lijn definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.lijn;

CREATE TABLE bereikbaarheidskaart.lijn (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	-- metadata velden
	bouwlaag int4 NULL,
	naam_aanmaker varchar(255) NULL,
	naam_bewerker varchar(255) NULL,
	datum_aangemaakt timestamp NULL,
	datum_gewijzigd timestamp NULL,
	-- geometrie
	geom public.geometry(linestring, 28992) NULL,
	categorie_dbk varchar(255) NULL DEFAULT 'algemeen'::character varying,
	CONSTRAINT lijn_pkey PRIMARY KEY (id)
);
CREATE INDEX lijn_geom_1621252935705 ON bereikbaarheidskaart.lijn USING gist (geom);