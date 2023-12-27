USE	Company;
GO

/*
	Write an SQL query to display StoreName and Phone of the stores 
	with the Phone starting with '604'; sort the results by the StoreName
	in ascending order.
*/
	
SELECT		StoreName,Phone 
FROM		STORE
WHERE		Phone LIKE '604%'
ORDER BY	StoreName ASC;

	
/*
	Write an SQL query to display the last name and first name
    of the employees who work at the Marine or Brentwood store.
*/


SELECT		StoreName, LastName, FirstName
FROM		EMPLOYEE
WHERE		StoreName = 'Marine'
OR			StoreName = 'Brentwood'
ORDER BY	StoreName;


/*
	Write an SQL query to find the stores with more than 1 employee.
    Display the StoreName and the number of employees.
    Give an appropriate column name to the computed results.
*/

SELECT		StoreName, COUNT(EmployeeNumber) AS NumberOfEmployees
FROM		EMPLOYEE
GROUP BY	StoreName
HAVING		COUNT(EmployeeNumber) >1
ORDER BY	StoreName;



