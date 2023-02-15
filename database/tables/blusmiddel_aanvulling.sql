-- bereikbaarheidskaart.blusmiddel_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.blusmiddel_aanvulling;

CREATE TABLE bereikbaarheidskaart.blusmiddel_aanvulling (
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
	categorie_dbk varchar(255) NULL,
	CONSTRAINT blusmiddel_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX blusmiddel_aanvulling_geom_1621252596761 ON bereikbaarheidskaart.blusmiddel_aanvulling USING gist (geom);