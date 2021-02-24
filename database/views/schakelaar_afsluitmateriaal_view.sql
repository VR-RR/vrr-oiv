create view bereikbaarheidskaart.schakelaar_afsluitmateriaal_view as
select
	lay.*
from
	bereikbaarheidskaart.schakelaar_afsluitmateriaal lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null