-- SOFTWARE MANAGEMENT SYSTEM
-- CRUD, JOINS, AGGREGATE FUNCTIONS AND VIEWS


/* =========================
   CRUD OPERATIONS
   ========================= */

-- CREATE
INSERT INTO Software
(software_id, software_name, version, price, developer_id, category_id)
VALUES
(6, 'MySQL', '8.0', 0, 4, 2);


-- READ
SELECT *
FROM Software;


-- UPDATE
UPDATE Software
SET price = 2500
WHERE software_id = 6;


-- DELETE
DELETE FROM Software
WHERE software_id = 6;


/* =========================
   JOIN OPERATIONS
   ========================= */

-- INNER JOIN
SELECT
    s.software_id,
    s.software_name,
    d.developer_name
FROM Software s
INNER JOIN Developer d
ON s.developer_id = d.developer_id;


-- JOIN Software with Category
SELECT
    s.software_name,
    c.category_name
FROM Software s
INNER JOIN Category c
ON s.category_id = c.category_id;


-- JOIN Users and Installation
SELECT
    u.user_name,
    s.software_name,
    i.installation_date
FROM Users u
INNER JOIN Installation i
ON u.user_id = i.user_id
INNER JOIN Software s
ON i.software_id = s.software_id;


/* =========================
   AGGREGATE FUNCTIONS
   ========================= */

-- COUNT
SELECT COUNT(*) AS total_software
FROM Software;


-- SUM
SELECT SUM(price) AS total_software_price
FROM Software;


-- AVG
SELECT AVG(price) AS average_software_price
FROM Software;


-- MAX
SELECT MAX(price) AS highest_price
FROM Software;


-- MIN
SELECT MIN(price) AS lowest_price
FROM Software;


/* =========================
   GROUP BY
   ========================= */

SELECT
    category_id,
    COUNT(*) AS software_count
FROM Software
GROUP BY category_id;


/* =========================
   HAVING
   ========================= */

SELECT
    category_id,
    COUNT(*) AS software_count
FROM Software
GROUP BY category_id
HAVING COUNT(*) >= 1;


/* =========================
   VIEW
   ========================= */

CREATE OR REPLACE VIEW software_details AS
SELECT
    s.software_id,
    s.software_name,
    s.version,
    s.price,
    d.developer_name,
    c.category_name
FROM Software s
JOIN Developer d
ON s.developer_id = d.developer_id
JOIN Category c
ON s.category_id = c.category_id;


-- Display View
SELECT *
FROM software_details;

COMMIT;
