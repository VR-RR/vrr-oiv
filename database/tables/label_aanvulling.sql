-- bereikbaarheidskaart.label_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.label_aanvulling;

CREATE TABLE bereikbaarheidskaart.label_aanvulling (
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
	categorie_dbk varchar(255) NULL,
	CONSTRAINT label_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX label_aanvulling_geom_1621252721915 ON bereikbaarheidskaart.label_aanvulling USING gist (geom);