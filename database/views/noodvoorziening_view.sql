create or replace view bereikbaarheidskaart.noodvoorziening_view as
select
	lay.*
from
	bereikbaarheidskaart.noodvoorziening lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null