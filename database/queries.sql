-- SOFTWARE MANAGEMENT SYSTEM
-- SQL QUERIES

-- 1. READ: Display all software
SELECT * FROM SOFTWARE;


-- 2. READ: Display software name and version
SELECT Software_Name, Version
FROM SOFTWARE;


-- 3. READ: Display active software
SELECT Software_ID, Software_Name, Version
FROM SOFTWARE
WHERE Software_ID IS NOT NULL;


-- 4. JOIN: Software with Developer
SELECT S.Software_Name,
       S.Version,
       D.Developer_Name
FROM SOFTWARE S
JOIN DEVELOPER D
ON S.Developer_ID = D.Developer_ID;


-- 5. JOIN: Software with Category
SELECT S.Software_Name,
       C.Category_Name
FROM SOFTWARE S
JOIN CATEGORY C
ON S.Category_ID = C.Category_ID;


-- 6. JOIN: Software with License
SELECT S.Software_Name,
       L.License_Type,
       L.Status
FROM SOFTWARE S
JOIN LICENSE L
ON S.License_ID = L.License_ID;


-- 7. JOIN: Installation details
SELECT I.Installation_ID,
       S.Software_Name,
       U.User_Name,
       I.Install_Date,
       I.System_Name,
       I.Status
FROM INSTALLATION I
JOIN SOFTWARE S
ON I.Software_ID = S.Software_ID
JOIN "USER" U
ON I.User_ID = U.User_ID;


-- 8. UPDATE: Change software version
UPDATE SOFTWARE
SET Version = '1.86'
WHERE Software_ID = 1;


-- 9. DELETE: Remove a software record
-- Use carefully when executing
-- DELETE FROM SOFTWARE
-- WHERE Software_ID = 3;


-- 10. Count total software
SELECT COUNT(*) AS Total_Software
FROM SOFTWARE;


-- 11. Count software by category
SELECT C.Category_Name,
       COUNT(S.Software_ID) AS Total_Software
FROM CATEGORY C
LEFT JOIN SOFTWARE S
ON C.Category_ID = S.Category_ID
GROUP BY C.Category_Name;


-- 12. Display all users
SELECT * FROM "USER";
