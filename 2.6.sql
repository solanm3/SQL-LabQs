select region, SUM(population) AS Population, AVG(LifeExpectancy) AS LifeExpectancy
from Country
where LifeExpectancy is not null
Group by Region
order by AVG(LifeExpectancy) DESC;