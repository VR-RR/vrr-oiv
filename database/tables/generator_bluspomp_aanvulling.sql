-- bereikbaarheidskaart.generator_bluspomp_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.generator_bluspomp_aanvulling;

CREATE TABLE bereikbaarheidskaart.generator_bluspomp_aanvulling (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	type_aandrijving varchar(255) NULL,
	sturing varchar(255) NULL,
	druk float8 NULL,
	levering float8 NULL,
	vermogen float8 NULL,
	brandstoftank varchar(255) NULL,
	brandstoftank_inhoud float8 NULL,
	accu_batterij_gewicht_kg float8 NULL,
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
	categorie_dbk varchar(255) NULL,
	CONSTRAINT generator_bluspomp_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX generator_bluspomp_aanvulling_geom_1621252659480 ON bereikbaarheidskaart.generator_bluspomp_aanvulling USING gist (geom);