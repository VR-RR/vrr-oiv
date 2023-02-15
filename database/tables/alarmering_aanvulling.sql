-- bereikbaarheidskaart.alarmering_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.alarmering_aanvulling;

CREATE TABLE bereikbaarheidskaart.alarmering_aanvulling (
	-- invulvelden
	omschrijving varchar(255) NULL,
	sturing varchar(255) NULL,
	overige_sturingen varchar(255) NULL,
	opmerking varchar(255) NULL,
	-- metadata velden
	bouwlaag int4 NULL,
	symboolgrootte float8 NULL,
	symboolrotatie int4 NULL,
	naam_aanmaker varchar(255) NULL,
	naam_bewerker varchar(255) NULL,
	datum_aangemaakt timestamp NULL,
	datum_gewijzigd timestamp NULL,
	id serial4 NOT NULL,
	-- geometrie
	geom public.geometry(point, 28992) NULL,
	categorie_dbk varchar(255) NULL,
	CONSTRAINT alarmering_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX alarmering_aanvulling_geom_1621252526936 ON bereikbaarheidskaart.alarmering_aanvulling USING gist (geom);