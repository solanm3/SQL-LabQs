select cl.Language, sum(c.population *cl.Percentage) as NumSpeakers, count(cl.Language) as NumCountries
from CountryLanguage cl join Country c on cl.CountryCode = c.Code
group by cl.Language
order by NumSpeakers Desc
limit 10