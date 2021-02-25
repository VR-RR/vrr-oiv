create view bereikbaarheidskaart.blusmateriaal_view as
select
	lay.*
from
	bereikbaarheidskaart.blusmateriaal lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null