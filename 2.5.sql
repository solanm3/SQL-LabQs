select (CountryCode), count(City)
from City
group by CountryCode