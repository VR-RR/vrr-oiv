-- bereikbaarheidskaart.blusmateriaal definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.blusmateriaal;

CREATE TABLE bereikbaarheidskaart.blusmateriaal (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	inhoud varchar(255) NULL,
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
	CONSTRAINT blusmateriaal_pkey PRIMARY KEY (id)
);
CREATE INDEX blusmateriaal_geom_1621252571144 ON bereikbaarheidskaart.blusmateriaal USING gist (geom);