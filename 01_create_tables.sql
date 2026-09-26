-- SOFTWARE MANAGEMENT SYSTEM
-- TABLE CREATION WITH CONSTRAINTS

CREATE TABLE Developer (
    developer_id NUMBER PRIMARY KEY,
    developer_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE
);

CREATE TABLE Category (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(50) NOT NULL UNIQUE
);

CREATE TABLE Software (
    software_id NUMBER PRIMARY KEY,
    software_name VARCHAR2(100) NOT NULL,
    version VARCHAR2(20),
    price NUMBER(10,2) DEFAULT 0 CHECK (price >= 0),
    developer_id NUMBER,
    category_id NUMBER,

    CONSTRAINT fk_software_developer
        FOREIGN KEY (developer_id)
        REFERENCES Developer(developer_id),

    CONSTRAINT fk_software_category
        FOREIGN KEY (category_id)
        REFERENCES Category(category_id)
);

CREATE TABLE License (
    license_id NUMBER PRIMARY KEY,
    license_type VARCHAR2(30) NOT NULL,
    software_id NUMBER,

    CONSTRAINT fk_license_software
        FOREIGN KEY (software_id)
        REFERENCES Software(software_id)
);

CREATE TABLE Users (
    user_id NUMBER PRIMARY KEY,
    user_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    user_type VARCHAR2(20) DEFAULT 'Student'
);

CREATE TABLE Installation (
    installation_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    software_id NUMBER,
    installation_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_installation_user
        FOREIGN KEY (user_id)
        REFERENCES Users(user_id),

    CONSTRAINT fk_installation_software
        FOREIGN KEY (software_id)
        REFERENCES Software(software_id)
);
