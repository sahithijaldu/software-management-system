-- SOFTWARE MANAGEMENT SYSTEM
-- DDL, DML AND DQL OPERATIONS


/* =========================
   DDL OPERATIONS
   ========================= */

-- ALTER TABLE: Add a new column
ALTER TABLE Developer
ADD phone_number VARCHAR2(15);

-- ALTER TABLE: Add a new column
ALTER TABLE Software
ADD status VARCHAR2(20) DEFAULT 'Active';


/* =========================
   DML OPERATIONS
   ========================= */

-- INSERT
INSERT INTO Developer
(developer_id, developer_name, email, phone_number)
VALUES
(6, 'Amazon', 'support@amazon.com', '9876543210');

-- UPDATE
UPDATE Software
SET status = 'Inactive'
WHERE software_id = 5;

-- DELETE
DELETE FROM Developer
WHERE developer_id = 6;


/* =========================
   DQL OPERATIONS
   ========================= */

-- SELECT all software
SELECT * FROM Software;

-- SELECT specific columns
SELECT software_id, software_name, version
FROM Software;

-- WHERE condition
SELECT *
FROM Software
WHERE price > 1000;

-- ORDER BY
SELECT software_name, price
FROM Software
ORDER BY price DESC;

-- DISTINCT
SELECT DISTINCT category_id
FROM Software;


/* =========================
   ADDITIONAL DQL QUERIES
   ========================= */

-- Software with price between 1000 and 6000
SELECT software_name, price
FROM Software
WHERE price BETWEEN 1000 AND 6000;

-- Software names starting with A
SELECT software_name
FROM Software
WHERE software_name LIKE 'A%';

-- Users who are students
SELECT user_name, email
FROM Users
WHERE user_type = 'Student';

COMMIT;
