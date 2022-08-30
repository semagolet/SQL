Select * from Products

/* Select ProductId as Id, ProductName as Name from Products */

Select ProductId Id, ProductName Name from Products

Select * from Products p

Select p.ProductName, p.UnitsInStock * p.UnitPrice as Total from Products p 

Select p.ProductName + '' + p.QuantityPerUnit from Products p

Select * from Products where not ProductName = 'Perth Pasties' and UnitsInStock=0

Select * from Products order by UnitPrice asc, ProductName desc

Select * from Products where UnitPrice between 10 and 46 order by UnitPrice

Select * from Products Where CategoryId in (1,2)

Select Count (*) as [Urun Sayisi] from Products

Select Count (ProductName) from Products  /*  count fonskiyonlarý NULL ifadelerini saymaz     */

Select Min(UnitPrice) from Products

Select Max(UnitPrice) from Products

Select Avg(UnitPrice) from Products

Select Sum(UnitPrice * Quantity) as Kazanc from [Order Details]

Select Rand()

Select distinct(Country) from Customers order by Country /* tekrar eden bir þey var mý */

Select distinct Country, City from Customers order by Country

/*hangi ülkede kaç tane müteri var */ 

Select Country, Count(*) Adet from Customers group by Country /* her grup için count(*) çalýþtýrýlýr lþste tutmak gibi */

Select Country,City,  Count(*) Adet from Customers group by Country, City
