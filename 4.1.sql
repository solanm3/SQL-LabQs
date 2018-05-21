select co.name, c.name, c.Population
from Country co, City c
where co.code = c.CountryCode and c.Population > 
(select AVG(Population) from City where CountryCode = CountryCode)