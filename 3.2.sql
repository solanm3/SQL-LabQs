select c.name, cl.Language, cl.Percentage
from Country c, CountryLanguage cl
where c.code = cl.CountryCode and cl.Percentage >= 50;

#group by c.name 

#having max(perc)
