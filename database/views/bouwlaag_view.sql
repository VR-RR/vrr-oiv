create view bouwlaag_view as
select
	lay.*
from
	bereikbaarheidskaart.bouwlaag lay
left join bereikbaarheidskaart.concept c on
	(ST_Within(lay.geom,
	c.geom))
where
	c.id is null