-- bereikbaarheidskaart.opstelplaats definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.opstelplaats;

CREATE TABLE bereikbaarheidskaart.opstelplaats (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	type_voertuig varchar(255) NULL,
	geëiste_opstelplaats varchar(255) NULL,
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
	-- geometrie
	geom public.geometry(point, 28992) NULL,
	categorie_dbk varchar(255) NULL DEFAULT 'algemeen'::character varying,
	CONSTRAINT opstelplaats_pkey PRIMARY KEY (id)
);
CREATE INDEX opstelplaats_geom_1621253087155 ON bereikbaarheidskaart.opstelplaats USING gist (geom);