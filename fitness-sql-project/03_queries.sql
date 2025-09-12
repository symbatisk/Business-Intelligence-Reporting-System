/* 1) Change client's status*/
UPDATE Client
SET VIP_Status = 'VIP'
WHERE Client_ID IN (
    SELECT DISTINCT i.Client_ID 
    FROM Income i
    JOIN Membership m ON i.Membership_ID = m.Membership_ID
    WHERE m.Price > 1000  
);

/* 2) Update the price of the membership type "Basic Plan" */
UPDATE Membership 
SET Price = 320.00
WHERE Membership_Type = 'Basic Plan';



/* SECTION 4 - SELECT STATEMENTS */

-- 1
/*This query shows the number of purchases and total revenue for each membership type, 
sorted by the most purchases and highest revenue.*/
select '1)' AS '';

SELECT 
    m.Membership_Type,
    COUNT(i.Membership_ID) AS Purchases,
    SUM(m.Price) AS Total_Revenue
FROM 
    Income i
JOIN 
    Membership m ON i.Membership_ID = m.Membership_ID
GROUP BY 
    m.Membership_Type
ORDER BY 
    Purchases DESC, Total_Revenue DESC;

-- 2
      
/* 
This query shows the total sales and the total number of unique clients served by each staff member 
from January to March 2025. The result is sorted by total sales in descending order.
*/

select '2)' AS '';
    
SELECT 
    s.Staff_ID,
    s.Name AS Staff_Name,
    SUM(m.Price) AS Total_Sales,
    COUNT(DISTINCT i.Client_ID) AS Total_Clients
FROM 
    Staff s
JOIN 
    Income i ON s.Staff_ID = i.Staff_ID
JOIN 
    Membership m ON m.Membership_ID = i.Membership_ID
WHERE 
    DATE_FORMAT(i.Date_Of_Payment, '%Y-%m') BETWEEN '2025-01' AND '2025-03'
GROUP BY 
    s.Staff_ID, s.Name
HAVING 
    Total_Sales > 0
ORDER BY 
    Total_Sales DESC;

-- 3
/*This query provides a list of clients over the age of 25 
who were served by Emily Davis during February 2025, 
along with their contact information.*/

select '3)' AS '';

SELECT 
    s.Name AS Staff_Name,
    c.Age AS Client_Age,
    c.Name AS Client_Name,
    c.Email
FROM 
    Client c
JOIN 
    Income i ON c.Client_ID = i.Client_ID
JOIN 
    Staff s ON i.Staff_ID = s.Staff_ID
WHERE 
    c.Age > 25 AND s.Name = 'Emily Davis'
    AND i.Date_Of_Payment BETWEEN '2025-02-01' AND '2025-02-28';


    
-- 4
/*List clients whose memberships are expiring in the next 
30 days and the staff who last facilitated their payment.*/

select '4)' AS '';

SELECT 
    c.Client_ID,
    c.Name AS Client_Name,
    c.Email,
    i.End_Date,
    s.Name AS Last_Handled_By
FROM 
    Client c
JOIN 
    Income i ON c.Client_ID = i.Client_ID
JOIN 
    Staff s ON i.Staff_ID = s.Staff_ID
WHERE 
    i.End_Date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY)
    AND c.Email IS NOT NULL -- Ensures clients have an email
ORDER BY 
    i.End_Date;




-- 5 
/*This query returns a list of clients who have made payments for at least two consecutive months. 
It counts the number of distinct months each client has paid, 
ensuring that only those who have made payments in consecutive months are included.*/

select '5)' AS '';

SELECT 
    c.Client_ID,
    c.Name AS Client_Name,
    COUNT(DISTINCT DATE_FORMAT(i.Date_Of_Payment, '%Y-%m')) AS Consecutive_Months
FROM 
    Client c
JOIN 
    Income i ON c.Client_ID = i.Client_ID
WHERE 
    EXISTS (
        SELECT  *
        FROM Income i2
        WHERE i.Client_ID = i2.Client_ID
         AND DATE_FORMAT(i.Date_Of_Payment, '%Y-%m') = 
              DATE_FORMAT(DATE_ADD(i2.Date_Of_Payment, INTERVAL 1 MONTH), '%Y-%m')
    )
GROUP BY 
    c.Client_ID, c.Name
HAVING 
    Consecutive_Months >= 2
ORDER BY 
    Consecutive_Months DESC;



-- 6
/*The query lists clients whose names contain "Wilson" and who made a payment on January 15, 2025, 
along with details about the payment and the staff who assisted.*/

select '6)' AS '';

SELECT 
    i.Client_ID,
    c.Name AS Client_Name,
    i.Date_Of_Payment,
    m.Price AS Purchase_Amount,
    i.Membership_ID,
    s.Name AS Staff_Who_Assisted
FROM 
    Client c
JOIN 
    Income i ON c.Client_ID = i.Client_ID
JOIN 
    Staff s ON i.Staff_ID = s.Staff_ID 
JOIN 
    Membership m ON m.Membership_ID = i.Membership_ID
WHERE  
    c.Name LIKE '%Wilson%' AND i.Date_Of_Payment = '2025-01-15'
ORDER BY 
    i.Date_Of_Payment;
    
    
  

-- 7
/*The query shows the total expenses for each category in December 2024, 
with the categories that had the highest expenses listed first.*/

select '7)' AS '';

SELECT 
    MONTH(e.Date) AS Month,
    e.Category,
    SUM(e.Amount) AS Total_Expenses
FROM 
    Expenses e
WHERE 
    YEAR(e.Date) = 2024 And MONTH(e.Date) = 12
GROUP BY 
    MONTH(e.Date), e.Category
ORDER BY 
    Month, Total_Expenses DESC;
    


-- 8
/*This query calculates the net profit for each month in 2025 
by comparing the total income and total expenses.*/

select '8)' AS '';

SELECT 
    m.Month,
    i.Total_Income,
    e.Total_Expenses,
    i.Total_Income - e.Total_Expenses AS Net_Profit
FROM (
    SELECT MONTH(Date_Of_Payment) AS Month
    FROM Income
    WHERE YEAR(Date_Of_Payment) = 2025
    GROUP BY MONTH(Date_Of_Payment)
    
    UNION
    
    SELECT MONTH(Date) AS Month
    FROM Expenses
    WHERE YEAR(Date) = 2025
    GROUP BY MONTH(Date)
) m

JOIN (
    SELECT 
        MONTH(I.Date_Of_Payment) AS Month, 
        SUM(M.Price) AS Total_Income
    FROM Income I
    JOIN Membership M ON I.Membership_ID = M.Membership_ID
    WHERE YEAR(I.Date_Of_Payment) = 2025
    GROUP BY MONTH(I.Date_Of_Payment)
) i ON m.Month = i.Month

JOIN (
    SELECT MONTH(Date) AS Month, SUM(Amount) AS Total_Expenses
    FROM Expenses
    WHERE YEAR(Date) = 2025
    GROUP BY MONTH(Date)
) e ON m.Month = e.Month

ORDER BY m.Month;


/* SECTION 5 - DELETE ROWS */

/* 1) Remove all the information about client who is not in Income */
DELETE FROM Client
WHERE Client_ID NOT IN (
    SELECT DISTINCT Client_ID 
    FROM Income
);

/* 2) Remove all expense for the last year*/

DELETE FROM Expenses
WHERE Date < '2025-01-01';


/* SECTION 6 DROP TABLES */
DROP TABLE  Income;
DROP TABLE  Expenses;
DROP TABLE  Membership;
DROP TABLE  Client;
DROP TABLE  Staff;

SHOW TABLES;
