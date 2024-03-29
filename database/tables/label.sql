-- bereikbaarheidskaart."label" definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart."label";

CREATE TABLE bereikbaarheidskaart."label" (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	"label" varchar(255) NULL,
	opmerking varchar(255) NULL,
	bouwlaag int4 NULL,
	symboolgrootte float8 NULL,
	symboolrotatie int4 NULL,
	-- metadata velden
	naam_aanmaker varchar(255) NULL,
	naam_bewerker varchar(255) NULL,
	datum_aangemaakt timestamp NULL,
	datum_gewijzigd timestamp NULL,
	-- geometrie
	geom public.geometry(point, 28992) NULL,
	categorie_dbk varchar(255) NULL DEFAULT 'algemeen'::character varying,
	CONSTRAINT label_pkey PRIMARY KEY (id)
);
CREATE INDEX label_geom_1621252711135 ON bereikbaarheidskaart.label USING gist (geom);