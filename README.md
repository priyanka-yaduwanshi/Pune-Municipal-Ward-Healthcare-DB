# Pune Municipal Ward & Healthcare Facility Management Database

## Project Overview

This project is a MySQL-based relational database developed for managing Pune municipal wards and healthcare facilities.

The system provides a structured way to store and manage information about municipal wards, healthcare facilities, staff, and inventory. It demonstrates practical implementation of important Database Management System concepts using MySQL.

## Problem Statement

Managing healthcare facility information using manual or unstructured records can make data retrieval, inventory tracking, staff management, and reporting difficult.

This project provides a centralized relational database to organize healthcare facility information and support efficient SQL-based querying and analysis.

## Objectives

- Create a structured database for Pune municipal wards and healthcare facilities.
- Maintain ward and healthcare facility information.
- Manage staff records associated with facilities.
- Track healthcare inventory and stock status.
- Perform data analysis using SQL queries.
- Demonstrate advanced DBMS concepts using MySQL.
- Improve data consistency and reduce redundancy through normalized database design.

## Database Entities

### 1. Wards
- Ward_No
- Ward_Name
- City_Name

### 2. Facilities
- Facility_ID
- Ward_No
- Hospital_Name
- Facility_Type
- Latitude
- Longitude

### 3. Staff
- Staff_ID
- Facility_ID
- Staff_Name
- Role
- ContactNo

### 4. Inventory
- Item_ID
- Facility_ID
- Item_Name
- Quantity
- Status

## Relationships

- Wards → Facilities: One-to-Many
- Facilities → Staff: One-to-Many
- Facilities → Inventory: One-to-Many

## Dataset

| Entity | Records |
|---|---:|
| Wards | 13 |
| Facilities | 50 |
| Staff | 50 |
| Inventory | 50 |

## DBMS Concepts Implemented

### Basic SQL
- SELECT
- WHERE
- ORDER BY

### JOIN Operations
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN equivalent using UNION
- 4-table JOIN

### Data Analysis
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING
- Correlated Subqueries

### Advanced SQL
- Database Views
- Stored Procedure
- Trigger
- Transactions
- COMMIT
- ROLLBACK

### Query Optimization
- Non-primary indexes
- EXPLAIN
- Query execution plan comparison

## Views

### Ward_Facility_Summary
Provides ward information along with the total number of healthcare facilities.

### Inventory_Status_Summary
Provides inventory status and quantity summaries.

## Stored Procedure

`UpdateInventoryQuantity`

Used to update inventory quantity using the Item ID.

## Trigger

`trg_update_inventory_status`

Automatically updates inventory status according to quantity:

- Quantity = 0 → Out of Stock
- Quantity < 20 → Low Stock
- Quantity >= 20 → Available

## Transactions

The project demonstrates transaction management using:

- START TRANSACTION
- COMMIT
- ROLLBACK

## Indexes

The project uses indexes for query optimization:

- `idx_facility_hospital_name`
- `idx_inventory_quantity`

The `EXPLAIN` command is used to examine query execution plans before and after indexing.

## Project Structure

```text
Pune-Municipal-Ward-Healthcare-DB
│
├── SQL_Files
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Tables.sql
│   ├── 03_Insert_Data.sql
│   ├── 04_Basic_SQL.sql
│   ├── 05_Joins.sql
│   ├── 06_GroupBy_Aggregates.sql
│   ├── 07_Subqueries.sql
│   ├── 08_Views.sql
│   ├── 09_Stored_Procedure.sql
│   ├── 10_Trigger.sql
│   ├── 11_Transactions.sql
│   └── 12_Indexes_EXPLAIN.sql
│
├── Presentation
│   └── Pune_Healthcare_DBMS_TAE2.pptx
│
└── README.md
