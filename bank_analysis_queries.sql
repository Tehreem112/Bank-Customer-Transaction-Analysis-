%How many customers are there by gender?

SELECT COUNT (DISTINCT(CustomerID)) AS Customers, Gender
FROM customers
GROUP BY Gender;



#Which city generates the highest revenue?

SELECT c.City, SUM(t.TransactionAmountEUR) as Revenue
FROM Customers c 
JOIN transactions t
ON c.CustomerID = t.CustomerID
Group BY c.City
ORDER BY Revenue DESC;



#Which transaction type is used by the most customers?

SELECT TransactionType, COUNT(DISTINCT CustomerID) AS Customers
From transactions
GROUP BY TransactionType
ORDER BY Customers DESC;



#Which customer target segment has the highest campaign reach?

SELECT cp.TargetSegment, COUNT (DISTINCT cr.CustomerID) AS Customers
FROM campaigns cp 
JOIN campaignresults cr 
ON cp.CampaignID = cr.CampaignID
GROUP BY cp.TargetSegment
ORDER BY Customers DESC;
