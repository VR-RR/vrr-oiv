-- bereikbaarheidskaart.vlak definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.vlak;

CREATE TABLE bereikbaarheidskaart.vlak (
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
	geom public.geometry(polygon, 28992) NULL,
	categorie_dbk varchar(255) NULL DEFAULT 'algemeen'::character varying,
	CONSTRAINT vlak_pkey PRIMARY KEY (id)
);
CREATE INDEX vlak_geom_1621253286274 ON bereikbaarheidskaart.vlak USING gist (geom);