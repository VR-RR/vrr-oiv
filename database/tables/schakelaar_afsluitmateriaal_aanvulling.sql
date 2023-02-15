-- bereikbaarheidskaart.schakelaar_afsluitmateriaal_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.schakelaar_afsluitmateriaal_aanvulling;

CREATE TABLE bereikbaarheidskaart.schakelaar_afsluitmateriaal_aanvulling (
	-- invulvelden
	omschrijving varchar(255) NULL,
	sturing varchar(255) NULL,
	overige_sturing varchar(255) NULL,
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
	CONSTRAINT schakelaar_afsluitmateriaal_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX schakelaar_afsluitmateriaal_aanvulling_geom_1621253160123 ON bereikbaarheidskaart.schakelaar_afsluitmateriaal_aanvulling USING gist (geom);