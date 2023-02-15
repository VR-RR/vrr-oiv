-- bereikbaarheidskaart.brandweerinformatie definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.brandweerinformatie;

CREATE TABLE bereikbaarheidskaart.brandweerinformatie (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	geldigheid varchar(255) NULL,
	tijdvak varchar(255) NULL,
	datum_start timestamp NULL,
	datum_eind timestamp NULL,
	opmerking varchar(255) NULL,
	-- metadata velden
	bouwlaag int4 NULL,
	symboolgrootte float8 NULL,
	symboolrotatie int4 NULL,
	naam_aanmaker varchar(255) NULL,
	naam_bewerker varchar(255) NULL,
	datum_aangemaakt timestamp NULL,
	datum_gewijzigd timestamp NULL,
	categorie_dbk varchar(255) NULL,
	url_cesium varchar(2048) NULL,
	geom public.geometry(point, 28992) NULL,
	gebruiksfunctie text NULL,
	asielzoeker text NULL,
	aantal_bouwlagen text NULL,
	naam_locatie text NULL,
	straatnaam text NULL,
	huisnummer text NULL,
	deelgemeente text NULL,
	gemeente text NULL,
	oms text NULL,
	aol_classificatie text NULL,
	aol_gewenste_extra_voertuigen text NULL,
	aol_gemaakte_afspraken text NULL,
	aol_extra_opmerkingen text NULL,
	CONSTRAINT brandweerinformatie_pkey PRIMARY KEY (id)
);
CREATE INDEX brandweerinformatie_geom_1645719072515 ON bereikbaarheidskaart.brandweerinformatie USING gist (geom);