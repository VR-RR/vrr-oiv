create or replace view bereikbaarheidskaart.waterwinning_view as
select
	lay.*
from
	bereikbaarheidskaart.waterwinning lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null