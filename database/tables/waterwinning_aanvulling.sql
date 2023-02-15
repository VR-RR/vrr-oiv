-- bereikbaarheidskaart.waterwinning_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.waterwinning_aanvulling;

CREATE TABLE bereikbaarheidskaart.waterwinning_aanvulling (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	sturing varchar(255) NULL,
	diameter_leiding int4 NULL,
	druk float8 NULL,
	levering_uur float8 NULL,
	brandkraan_nr varchar(255) NULL,
	brandkraan_aansluiting varchar(255) NULL,
	drukverhoging_ringleiding varchar(255) NULL,
	opvoerpomp_geboorde_put varchar(255) NULL,
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
	CONSTRAINT waterwinning_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX waterwinning_aanvulling_geom_1621253351447 ON bereikbaarheidskaart.waterwinning_aanvulling USING gist (geom);