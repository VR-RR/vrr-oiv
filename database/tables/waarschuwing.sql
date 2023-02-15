-- bereikbaarheidskaart.waarschuwing definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.waarschuwing;

CREATE TABLE bereikbaarheidskaart.waarschuwing (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	omschrijving_gevaar varchar(255) NULL,
	ruimte varchar(255) NULL,
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
	CONSTRAINT waarschuwing_pkey PRIMARY KEY (id)
);
CREATE INDEX waarschuwing_geom_1621253314325 ON bereikbaarheidskaart.waarschuwing USING gist (geom);