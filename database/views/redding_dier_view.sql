create or replace view bereikbaarheidskaart.redding_dier_view as
select
	lay.*
from
	bereikbaarheidskaart.redding_dier lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null