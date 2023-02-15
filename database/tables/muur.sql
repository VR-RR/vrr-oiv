-- bereikbaarheidskaart.muur definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.muur;

CREATE TABLE bereikbaarheidskaart.muur (
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
	CONSTRAINT muur_pkey PRIMARY KEY (id)
);
CREATE INDEX muur_geom_1621253055594 ON bereikbaarheidskaart.muur USING gist (geom);