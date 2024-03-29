-- bereikbaarheidskaart.blusmiddel definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.blusmiddel;

CREATE TABLE bereikbaarheidskaart.blusmiddel (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	blussysteem varchar(255) NULL,
	activering_blussysteem varchar(255) NULL,
	locatie_hoofdafsluiter varchar(255) NULL,
	druk float8 NULL,
	levering_m3_uur float8 NULL,
	gewicht float8 NULL,
	inhoud float8 NULL,
	handblusmiddel varchar(255) NULL,
	brandklassen varchar(255) NULL,
	lengte_brandslanghaspel float8 NULL,
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
	CONSTRAINT blusmiddel_pkey PRIMARY KEY (id)
);
CREATE INDEX blusmiddel_geom_1621252584755 ON bereikbaarheidskaart.blusmiddel USING gist (geom);