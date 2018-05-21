select c.customerName, o.orderNumber, o.orderDate, round(sum(od.quantityOrdered * od.priceEach),2) as SellPrice, round(sum(od.quantityOrdered * p.buyPrice), 2) as CostPrice#, sum(SellPrice-costPrice) as Diff
from customers c join orders o on c.customerNumber = o.customerNumber
join orderdetails od on o.orderNumber = od.orderNumber
join products p on p.productCode = od.productCode
where o.status = 'Shipped' and p.buyPrice*2 < od.priceEach
group by o.orderNumber 
order by SellPrice desc;