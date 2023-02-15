-- bereikbaarheidskaart.opstelplaats_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.opstelplaats_aanvulling;

CREATE TABLE bereikbaarheidskaart.opstelplaats_aanvulling (
	omschrijving varchar(255) NULL,
	-- invulvelden
	type_voertuig varchar(255) NULL,
	geeiste_opstelplaats varchar(255) NULL,
	benaming_ugs varchar(255) NULL,
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
	CONSTRAINT opstelplaats_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX opstelplaats_aanvulling_geom_1621253095836 ON bereikbaarheidskaart.opstelplaats_aanvulling USING gist (geom);