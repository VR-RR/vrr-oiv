create view label_view as
select
	lay.*
from
	bereikbaarheidskaart.label lay
left join bereikbaarheidskaart.concept c on
	(ST_Within(lay.geom,
	c.geom))
where
	c.id is null