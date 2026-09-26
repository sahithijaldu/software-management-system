-- SOFTWARE MANAGEMENT SYSTEM
-- SAMPLE DATA INSERTION

-- Developer Data
INSERT INTO Developer VALUES
(1, 'Microsoft', 'support@microsoft.com');

INSERT INTO Developer VALUES
(2, 'Google', 'support@google.com');

INSERT INTO Developer VALUES
(3, 'Adobe', 'support@adobe.com');

INSERT INTO Developer VALUES
(4, 'Oracle', 'support@oracle.com');

INSERT INTO Developer VALUES
(5, 'IBM', 'support@ibm.com');


-- Category Data
INSERT INTO Category VALUES
(1, 'Operating System');

INSERT INTO Category VALUES
(2, 'Database');

INSERT INTO Category VALUES
(3, 'Development');

INSERT INTO Category VALUES
(4, 'Design');

INSERT INTO Category VALUES
(5, 'Productivity');


-- Software Data
INSERT INTO Software
(software_id, software_name, version, price, developer_id, category_id)
VALUES
(1, 'Windows', '11', 0, 1, 1);

INSERT INTO Software
(software_id, software_name, version, price, developer_id, category_id)
VALUES
(2, 'Oracle Database', '19c', 0, 4, 2);

INSERT INTO Software
(software_id, software_name, version, price, developer_id, category_id)
VALUES
(3, 'Visual Studio', '2022', 0, 1, 3);

INSERT INTO Software
(software_id, software_name, version, price, developer_id, category_id)
VALUES
(4, 'Adobe Photoshop', '2025', 5999, 3, 4);

INSERT INTO Software
(software_id, software_name, version, price, developer_id, category_id)
VALUES
(5, 'IBM SPSS', '29', 4500, 5, 5);


-- License Data
INSERT INTO License VALUES
(1, 'Free', 1);

INSERT INTO License VALUES
(2, 'Free', 2);

INSERT INTO License VALUES
(3, 'Free', 3);

INSERT INTO License VALUES
(4, 'Paid', 4);

INSERT INTO License VALUES
(5, 'Paid', 5);


-- User Data
INSERT INTO Users VALUES
(1, 'Sahithi', 'sahithi@gmail.com', 'Student');

INSERT INTO Users VALUES
(2, 'Devi', 'devi@gmail.com', 'Student');

INSERT INTO Users VALUES
(3, 'Momitha', 'momitha@gmail.com', 'Student');

INSERT INTO Users VALUES
(4, 'Ravi', 'ravi@gmail.com', 'Faculty');

INSERT INTO Users VALUES
(5, 'Anil', 'anil@gmail.com', 'Student');


-- Installation Data
INSERT INTO Installation
(installation_id, user_id, software_id)
VALUES
(1, 1, 1);

INSERT INTO Installation
(installation_id, user_id, software_id)
VALUES
(2, 1, 3);

INSERT INTO Installation
(installation_id, user_id, software_id)
VALUES
(3, 2, 2);

INSERT INTO Installation
(installation_id, user_id, software_id)
VALUES
(4, 3, 4);

INSERT INTO Installation
(installation_id, user_id, software_id)
VALUES
(5, 4, 5);

COMMIT;
