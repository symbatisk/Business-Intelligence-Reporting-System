# Fitness Club Database (SQL Project)

##  Project Goal
To design and implement a relational database for a fitness club to track its financial health, manage client memberships, and generate analytical reports for informed decision-making.

---

## Project Structure
The SQL code is organized into three files:
01_schema.sql → contains all CREATE TABLE statements for database structure.
02_inserts.sql → contains INSERT statements to populate the database with sample data.
03_queries.sql → contains various SELECT, UPDATE, and DELETE queries for analysis and data management.

---

##  Database Schema
The database consists of 5 main tables:
- **Membership** → Types of plans (Basic, Standard, Premium, etc.) with prices and sessions.  
- **Client** → Client details including contact info, age, and VIP status.  
- **Staff** → Employees, job titles, and salaries.  
- **Expenses** → Salaries, utilities, rent, and maintenance costs.  
- **Income** → Records of client payments for memberships.  

---

##  Features 

- **Data Integrity:** Enforced via PRIMARY KEYS, FOREIGN KEYS, and NOT NULL constraints.
- **Business Logic:** The application logic ensures a client can only have one active membership at a time (controlled by application layer before INSERT on `Income`).
- **Financial Reporting:** SQL queries provide insights into revenue, expenses, profit, and staff performance.
- **Sample Data:** The database is populated with realistic sample data for testing and demonstration.

---

## How to Use

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/fitness-club-database.git
    cd fitness-club-database
    ```
2.  **Run the complete script in your MySQL environment:**
    ```sql
    SOURCE fitness_club_db_full.sql;
    ```
3.  **Explore the queries.**
    1. Run 01_schema.sql to create the tables.
    2. Run 02_inserts.sql to insert sample data.
    3. Run 03_queries.sql to explore insights and perform operations.

---

## License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---
