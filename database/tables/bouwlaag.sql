-- bereikbaarheidskaart.bouwlaag definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.bouwlaag;

CREATE TABLE bereikbaarheidskaart.bouwlaag (
	id serial4 NOT NULL,
	-- metadata velden
	bouwlaag int4 NULL,
	naam_aanmaker varchar(255) NULL,
	naam_bewerker varchar(255) NULL,
	datum_aangemaakt timestamp NULL,
	datum_gewijzigd timestamp NULL,
	-- geometrie
	geom public.geometry(polygon, 28992) NULL,
	categorie_dbk varchar(255) NULL DEFAULT 'algemeen'::character varying,
	CONSTRAINT bouwlaag_pkey PRIMARY KEY (id)
);
CREATE INDEX bouwlaag_geom_1621252615639 ON bereikbaarheidskaart.bouwlaag USING gist (geom);