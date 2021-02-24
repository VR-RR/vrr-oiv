create view bereikbaarheidskaart.generator_bluspomp_view as
select
	lay.*
from
	bereikbaarheidskaart.generator_bluspomp lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null