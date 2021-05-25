create or replace view bereikbaarheidskaart.gevaarlijke_stoffen_view as
select
	lay.*
from
	bereikbaarheidskaart.gevaarlijke_stoffen lay
left join bereikbaarheidskaart.status c on
	(ST_Within(lay.geom,
	c.geom)) and status = 'concept'
where
	c.id is null