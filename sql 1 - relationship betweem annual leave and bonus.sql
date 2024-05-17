
/*Data for periods of Vacations and Sick Leave*/
SELECT *
FROM
    HumanResources.Employee;

/*Data for Bonus*/
SELECT *
FROM 
    Sales.SalesPerson;

/*Joined tables - Returned data for comparison of VacationHours vs Bonus fields*/
SELECT 
    hr.OrganizationLevel, 
	hr.JobTitle, 
	hr.VacationHours,  
	hr.SickLeaveHours,
    sp.Bonus,
	sp.CommissionPct, 
	sp.SalesLastYear
FROM 
    HumanResources.Employee AS hr
JOIN 
    Sales.SalesPerson AS sp
ON 
    hr.BusinessEntityID = sp.BusinessEntityID
ORDER BY 
    hr.VacationHours DESC;



