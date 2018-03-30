/*******************************************************************************
 MSSQL - Transact-SQL - Sample 03
 Subject: Creating temporary table ...
 Attention: You should create a database called Samples
*******************************************************************************/

-- Choosing the Database
-- If it does not exist, you must create
USE Samples
GO

-- Select with create temp table
SELECT C.idContact, C.dateBirth
INTO #tmpRange
FROM Contacts AS C
WHERE YEAR(C.dateBirth) BETWEEN 1994 AND 2010

-- Select temp table
SELECT #tmpRange.*
FROM #tmpRange

-- Drop temp table
DROP TABLE #tmpRange