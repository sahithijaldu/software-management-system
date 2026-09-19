# SOFTWARE MANAGEMENT SYSTEM

## Project Overview

The Software Management System is a DBMS-based project developed to store, organize and manage software-related information efficiently.

The system manages details such as software, developers, categories, licenses, users and software installations using a relational database.

## Objectives

- Store software information in a structured database.
- Manage developer and category details.
- Maintain software license information.
- Track software installations and users.
- Reduce data duplication and errors.
- Perform Insert, Update, Delete and Retrieve operations.
- Maintain data integrity using database constraints.

## Technologies Used

- Oracle Database
- SQL
- DBMS
- GitHub

## Database Tables

1. DEVELOPER
2. CATEGORY
3. SOFTWARE
4. LICENSE
5. USER
6. INSTALLATION

## DBMS Concepts Used

- Primary Key
- Foreign Key
- NOT NULL
- UNIQUE
- CHECK
- SQL Queries
- CRUD Operations
- Joins
- Data Validation
- Relational Database Schema
- ER Diagram

## CRUD Operations

| Operation | SQL Command | Purpose |
|---|---|---|
| Create | INSERT | Add new records |
| Read | SELECT | Retrieve records |
| Update | UPDATE | Modify existing records |
| Delete | DELETE | Remove records |

## Project Structure

```text
Software-Management-System/
│
├── README.md
│
└── database/
    ├── create_tables.sql
    ├── insert_data.sql
    └── queries.sql
