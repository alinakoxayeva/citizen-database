# Citizen Information Management System (DBMS Project)

This repository contains a relational database management system (RDBMS) designed and implemented from scratch to model, store, and manage comprehensive citizen records, including personal profiles, family bounds, employment history, education tracks, and real estate assets.

The core focus of this project is to maintain data integrity, enforce business rules programmatically, and optimize analytical queries within an Oracle SQL environment.

---

## 🛠️ Tech Stack & Concepts Covered
* **Database Engine:** Oracle SQL / PL-SQL
* **Data Definition Language (DDL):** Schema construction, custom constraints, and structured metadata.
* **Data Manipulation Language (DML):** Complex relational mutations and multi-layered querying.
* **Transaction Control (TCL):** Ensuring data consistency through atomic commits and safe rollbacks.
* **Performance Tuning:** Indexing strategy (B-Tree, Function-Based, and Composite Indexes).
* **Automation & Security:** Advanced Database Stored Procedures and Event-Driven Triggers.

---

## 📐 Database Architecture (E-R to Relational)

The database schema is heavily relational and normalized to eliminate data redundancy. The architecture connects the central `VETENDAS` entity with peripheral transactional tables using strict Primary-Foreign Key relationships.

### Entities Modeled:
1. **VETENDAS (Citizen):** The core table storing unique identification data (such as FIN codes).
2. **AILE (Family):** Parental relationships and demographic tracking.
3. **ELAQE (Contact):** Contact channels and spatial address tracking.
4. **IS_MELUMATI (Employment):** Enterprise details, positions, and financial metrics.
5. **TEHSIL (Education):** Academic backgrounds, institutions, and graduation metrics.
6. **EMLAK (Assets):** Real estate profile logs tied directly to owners.

---

## 🚀 Advanced Database Features Implemented

### 1. Query Optimization (Indexing)
To prevent performance bottlenecks (`Full Table Scans`) during massive data loads, explicit optimization strategies were deployed:
* **Composite Indexes:** To expedite multi-column lookups (e.g., matching first and last names together).
* **Function-Based Indexes:** Handling deterministic logic efficiently (e.g., index execution over `UPPER(ad)` parsing).
* **Unique Constraints:** Maintaining flawless validation for identity structures like citizen FIN codes.

### 2. Business Logic Automation (Stored Procedures)
Modularized logic blocks were compiled directly into the database engine to isolate table interactions and automate daily routines (e.g., executing structural salary raise distributions securely).

### 3. Structural Integrity Enforcement (Database Triggers)
Designed autonomous "gating" systems utilizing `BEFORE INSERT/UPDATE` hooks. These triggers act as real-time compliance shields, actively bouncing programmatic inputs that violate enterprise rules (e.g., preventing illegal salary allocations below the minimum dynamic threshold).

---

## 📊 Sample Queries & Analytical Insights
The architecture is designed to handle robust reporting, executing layered operations like:
* **Relational Joins:** Dynamic extraction of multi-table datasets (merging citizen identity logs with institutional financial statements simultaneously).
* **Data Aggregation:** Computing statistical corporate intelligence such as regional overhead margins, total organizational outputs, and granular payroll averages.
