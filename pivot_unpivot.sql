-- PIVOT 

SELECT VendorId, 
  SUM(CASE WHEN IncomeDay = 'MON' THEN IncomeAmount ELSE 0  END) MON,
  SUM(CASE WHEN IncomeDay = 'TUE' THEN IncomeAmount ELSE 0  END) TUE,
  SUM(CASE WHEN IncomeDay = 'WED' THEN IncomeAmount ELSE 0  END) WED,
  SUM(CASE WHEN IncomeDay = 'THU' THEN IncomeAmount ELSE 0  END) THU,
  SUM(CASE WHEN IncomeDay = 'FRI' THEN IncomeAmount ELSE 0  END) FRI,
  SUM(CASE WHEN IncomeDay = 'SAT' THEN IncomeAmount ELSE 0  END) SAT,
  SUM(CASE WHEN IncomeDay = 'SUN' THEN IncomeAmount ELSE 0  END) SUN
FROM [DailyIncome]
GROUP BY VendorId


--UNPIVOT 
SELECT VendorId, MON DAY
FROM pivoted_table
UNION 
SELECT VendorId, TUE
FROM pivoted_table
UNION 
SELECT VendorId, WED
FROM
 pivoted_table
UNION 
SELECT VendorId, THU
FROM
 pivoted_table
UNION 
SELECT VendorId, FRI
FROM
 pivoted_table
UNION 
SELECT VendorId, MON
FROM
 pivoted_table
UNION 
SELECT VendorId, SAT
FROM
 pivoted_table
 
 -- UNPIVOT WITHOUT AGGREGATION EXAMPLE !!! BASICALLY RECREATING THE DATE! 
 
