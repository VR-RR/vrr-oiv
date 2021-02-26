create view productie.productie.bag_nummer_view as
select
	lay.*
from
	productie.productie.bag_nummer lay
where
	lay.status = 'Naamgeving uitgegeven'