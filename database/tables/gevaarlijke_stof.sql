-- bereikbaarheidskaart.gevaarlijke_stof definition

-- Drop table

-- DROP TABLE bereikbaarheidskaart.gevaarlijke_stof;

CREATE TABLE bereikbaarheidskaart.gevaarlijke_stof (
	id serial4 NOT NULL,
	-- invulvelden
	omschrijving varchar(255) NULL,
	stofnaam varchar(255) NULL,
	gevarenklasse int4 NULL,
	subklasse varchar(255) NULL,
	gevi_code varchar(255) NULL,
	vn_un_nummer varchar(255) NULL,
	cas_nummer varchar(255) NULL,
	etiket varchar(255) NULL,
	eric_kaart varchar(255) NULL,
	hoeveelheid_kg_l float8 NULL,
	locatie varchar(255) NULL,
	ruimtenummer varchar(255) NULL,
	opmerking_stof varchar(255) NULL,
	aggregatie_toestand varchar(255) NULL,
	opslagvorm varchar(255) NULL,
	opslagmateriaal varchar(255) NULL,
	pathogeen varchar(255) NULL,
	verspreidingsmechanismen varchar(255) NULL,
	langetermijn_schade_gevaren varchar(255) NULL,
	milieuschadelijk varchar(255) NULL,
	nfpa_gevarendiamant_brandgevaar varchar(255) NULL,
	nfpa_gevarendiamant_reactiviteit varchar(255) NULL,
	nfpa_gevarendiamant_bijzonder varchar(255) NULL,
	nfpa_gevarendiamant varchar(255) NULL,
	nfpa_gevarendiamant_gezondheid varchar(255) NULL,
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
	CONSTRAINT gevaarlijke_stof_pkey PRIMARY KEY (id)
);
CREATE INDEX gevaarlijke_stof_geom_1621252671273 ON bereikbaarheidskaart.gevaarlijke_stof USING gist (geom);