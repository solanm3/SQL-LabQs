select DISTINCT c.name AS City, co.name AS Country
from City c, Country co 
where c.name like 'A%' and c.CountryCode = co.Code;