-- SOFTWARE MANAGEMENT SYSTEM
-- INSERT SAMPLE DATA

-- 1. DEVELOPER
INSERT INTO DEVELOPER
VALUES (1, 'Microsoft', 'support@microsoft.com', '9876543210');

INSERT INTO DEVELOPER
VALUES (2, 'Oracle', 'support@oracle.com', '9876543211');

INSERT INTO DEVELOPER
VALUES (3, 'Adobe', 'support@adobe.com', '9876543212');


-- 2. CATEGORY
INSERT INTO CATEGORY
VALUES (1, 'Programming', 'Programming and development software');

INSERT INTO CATEGORY
VALUES (2, 'Database', 'Database management software');

INSERT INTO CATEGORY
VALUES (3, 'Design', 'Graphic and design software');


-- 3. LICENSE
INSERT INTO LICENSE
VALUES (1, 'Free', DATE '2026-01-01', DATE '2027-01-01', 'Active');

INSERT INTO LICENSE
VALUES (2, 'Commercial', DATE '2026-02-01', DATE '2027-02-01', 'Active');

INSERT INTO LICENSE
VALUES (3, 'Trial', DATE '2026-03-01', DATE '2026-04-01', 'Expired');


-- 4. SOFTWARE
INSERT INTO SOFTWARE
VALUES (1, 'Visual Studio Code', '1.85', 1, 1, 1);

INSERT INTO SOFTWARE
VALUES (2, 'Oracle Database', '19c', 2, 2, 2);

INSERT INTO SOFTWARE
VALUES (3, 'Adobe Photoshop', '2026', 3, 3, 3);


-- 5. USER
INSERT INTO "USER"
VALUES (1, 'Rahul', 'rahul@example.com', 'CSE', '9876543213');

INSERT INTO "USER"
VALUES (2, 'Sneha', 'sneha@example.com', 'AIML', '9876543214');

INSERT INTO "USER"
VALUES (3, 'Kiran', 'kiran@example.com', 'ECE', '9876543215');


-- 6. INSTALLATION
INSERT INTO INSTALLATION
VALUES (1, 1, 1, DATE '2026-06-10', 'Rahul-Laptop', 'Installed');

INSERT INTO INSTALLATION
VALUES (2, 2, 2, DATE '2026-06-12', 'Sneha-Laptop', 'Installed');

INSERT INTO INSTALLATION
VALUES (3, 3, 3, DATE '2026-06-15', 'Kiran-PC', 'Installed');

COMMIT;
