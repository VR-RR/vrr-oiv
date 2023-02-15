-- bereikbaarheidskaart.toegang_aanvulling definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.toegang_aanvulling;

CREATE TABLE bereikbaarheidskaart.toegang_aanvulling (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	soort_toetreding varchar(255) NULL,
	sturing varchar(255) NULL,
	toegang varchar(255) NULL,
	hectometrering_cado varchar(255) NULL,
	lift_brancard varchar(100) NULL,
	lift_aandrijving varchar(255) NULL,
	lift_machinekamer varchar(255) NULL,
	bouwlagen_bereikbaar varchar(255) NULL,
	locatie_lift_machinekamer varchar(255) NULL,
	locatie_liftsleutel varchar(255) NULL,
	overdruk_trappenhuis varchar(255) NULL,
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
	CONSTRAINT toegang_aanvulling_pkey PRIMARY KEY (id)
);
CREATE INDEX toegang_aanvulling_geom_1621253208705 ON bereikbaarheidskaart.toegang_aanvulling USING gist (geom);