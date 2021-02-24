create view bereikbaarheidskaart.redding_mens_view as
select
	lay.*
from
	bereikbaarheidskaart.redding_mens lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null