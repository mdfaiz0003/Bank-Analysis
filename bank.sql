create database project;
use project;
select * from bankloan;
DESCRIBE bankloan;

-- -------Total Loan Amount Funded
SELECT SUM(`Funded Amount`) AS total_funded_amount FROM `bankloan`;

----- Total loans
SELECT COUNT(*) AS total_loans FROM bankloan;

----- Total loans active
SELECT COUNT(*) AS total_active_loans FROM bankloan WHERE `Loan Status` = 'Active Loan';


----- Total loans by religion
SELECT Religion, COUNT(*) AS total_loans FROM bankloan GROUP BY Religion ORDER BY total_loans DESC;


----- Loan Status-Wise Loan
SELECT  `Loan Status`, COUNT(*) AS total_loans FROM bankloan GROUP BY `Loan Status` ORDER BY total_loans DESC;

----- Total loans Verified
SELECT COUNT(*) AS verified_loans FROM bankloan WHERE `Verification Status` <> 'Verified';


----- Grade Wise Loan
SELECT  `Grrade` AS grade, COUNT(*) AS total_loans FROM bankloan GROUP BY `Grrade` ORDER BY total_loans DESC;


----- State Wise Loan
SELECT  `State Name`, COUNT(*) AS total_loans FROM bankloan GROUP BY `State Name` ORDER BY total_loans DESC;


----- Age Wise Loan
SELECT CASE
    WHEN `Age` < 20 THEN 'Under 20'
    WHEN `Age` BETWEEN 20 AND 29 THEN '20-29'
    WHEN `Age` BETWEEN 30 AND 39 THEN '30-39'
    WHEN `Age` BETWEEN 40 AND 49 THEN '40-49'
    WHEN `Age` BETWEEN 50 AND 59 THEN '50-59'
    WHEN `Age` >= 60 THEN '60+'
    ELSE 'Unknown'
  END AS age_group,
  COUNT(*) AS loans_count
FROM bankloan
GROUP BY age_group
ORDER BY loans_count DESC;

----- Total Interest
SELECT 
    SUM(`Total Rrec int`) AS total_interest
FROM bankloan;











