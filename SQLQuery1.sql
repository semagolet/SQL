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

Select Count (ProductName) from Products  /*  count fonskiyonlar� NULL ifadelerini saymaz     */

Select Min(UnitPrice) from Products

Select Max(UnitPrice) from Products

Select Avg(UnitPrice) from Products

Select Sum(UnitPrice * Quantity) as Kazanc from [Order Details]

Select Rand()

Select distinct(Country) from Customers order by Country /* tekrar eden bir �ey var m� */

Select distinct Country, City from Customers order by Country

/*hangi �lkede ka� tane m�teri var */ 

Select Country, Count(*) Adet from Customers group by Country /* her grup i�in count(*) �al��t�r�l�r l�ste tutmak gibi */

Select Country,City,  Count(*) Adet from Customers 
where City <> 'Nantes'
group by Country, City having Count(*)>1  /* having k�m�latif sorgular s�ralamalari�in */ 
order by Country

Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID /* iki tabloda �arta e�le�enleri getirir */

Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>20


Select * from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
order by Categories.CategoryID


Select * from Products p inner join Categories c
on p.CategoryID = c.CategoryID 
where p.UnitPrice>20
order by c.CategoryID


Select p. ProductName, o.OrderDate, od.Quantity * od.UnitPrice as Total from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID
order by p.ProductName, o.OrderDate


select * from Products p inner join [Order Details] o
on p.ProductID = o.ProductID

select * from Products p left join [Order Details] o
on p.ProductID = o.ProductID