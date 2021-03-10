select * 
from <schema>.<tabelnaam> 
where omschrijving = '<omschrijving>' and naam_aanmaker = '<naam_aanmaker>' and symboolgrootte > <symboolgroote>

update <schema>.<tabelnaam> 
set symboolgrootte = symboolgrootte/2
where omschrijving = '<omschrijving>' and naam_aanmaker = '<naam_aanmaker>' and symboolgrootte > <symboolgroote>