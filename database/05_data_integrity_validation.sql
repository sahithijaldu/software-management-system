-- SOFTWARE MANAGEMENT SYSTEM
-- DATA INTEGRITY AND VALIDATION


/* =========================
   PRIMARY KEY VALIDATION
   ========================= */

-- Duplicate primary key should be rejected
-- INSERT INTO Developer
-- VALUES (1, 'Test Developer', 'test@example.com');


/* =========================
   UNIQUE CONSTRAINT VALIDATION
   ========================= */

-- Duplicate email should be rejected
-- INSERT INTO Developer
-- VALUES (10, 'Test Developer', 'support@microsoft.com');


/* =========================
   NOT NULL VALIDATION
   ========================= */

-- Developer name cannot be NULL
-- INSERT INTO Developer
-- VALUES (10, NULL, 'test@example.com');


/* =========================
   CHECK CONSTRAINT VALIDATION
   ========================= */

-- Price cannot be negative
-- INSERT INTO Software
-- (software_id, software_name, version, price, developer_id, category_id)
-- VALUES (10, 'Test Software', '1.0', -500, 1, 1);


/* =========================
   FOREIGN KEY VALIDATION
   ========================= */

-- Developer ID 99 does not exist
-- INSERT INTO Software
-- (software_id, software_name, version, price, developer_id, category_id)
-- VALUES (11, 'Test Software', '1.0', 500, 99, 1);


/* =========================
   VALID DATA CHECK
   ========================= */

SELECT *
FROM Developer;

SELECT *
FROM Category;

SELECT *
FROM Software;

SELECT *
FROM License;

SELECT *
FROM Users;

SELECT *
FROM Installation;


/* =========================
   DATA VALIDATION QUERIES
   ========================= */

-- Check software with valid prices
SELECT software_name, price
FROM Software
WHERE price >= 0;

-- Check users with valid email IDs
SELECT user_id, user_name, email
FROM Users
WHERE email IS NOT NULL;

-- Check software with existing developers
SELECT s.software_name, d.developer_name
FROM Software s
JOIN Developer d
ON s.developer_id = d.developer_id;

COMMIT;
