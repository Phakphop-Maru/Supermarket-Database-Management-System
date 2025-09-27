# Supermarket Database Management System 🛒

## 📌 Project Overview
This project is part of the **Database Management Systems** course (Mahidol University, Semester 1/2023).  
The goal is to design and implement a **Supermarket Database** that supports customer management, employee roles, product inventory, transactions, loyalty programs, and reporting.

The project includes:
- Database schema design from **ERD → Relational Model → Final Schema**
- Implementation in **MySQL**
- **40+ SQL queries** (basic & advanced) for data retrieval and business insights
- Documentation with ER diagrams, relational schemas, and query results

---

## 🛠️ Tech Stack
- **Database**: MySQL 8.0  
- **Modeling**: ERD / EERD → Relational Schema  
- **Tools**: SQL Workbench, MySQL CLI  
- **Languages**: SQL  

---

## 📂 Project Structure
```

📦 supermarket-database
┣ 📜 PJ2-Sec2Gr12DB.sql      # SQL schema & queries
┣ 📜 PJ2-Sec2Gr12DB.pdf      # Final report with ERD, schema, documentation
┗ 📜 README.md               # Project documentation

````

---

## 🗄️ Database Schema
**Main Entities**:
- **Customer** – personal info, loyalty points, contact  
- **Employee** – staff details, supervisors, positions  
- **Product** – items, categories, stock, pricing  
- **Transaction** – customer purchases, total amount, dates  
- **System / Loyalty Program** – rewards, sharing, customer engagement  

**Relationships**:
- Customer ↔ Transaction (1:N)  
- Product ↔ Transaction (1:N)  
- Employee ↔ Supervisor (1:N)  
- Customer ↔ Loyalty System (M:N via Reward/Share tables)  

---

## 🔍 Example Queries
### Basic Queries
- Retrieve all customers:
```sql
SELECT * FROM Customer;
````

* Find products with stock quantity > 50:

```sql
SELECT * FROM Product WHERE StockQuantity > 50;
```

### Advanced Queries

* Top 5 customers with highest loyalty points:

```sql
SELECT * 
FROM Customer 
ORDER BY Loyal_Points DESC 
LIMIT 5;
```

* Calculate total revenue per product category:

```sql
SELECT P.P_Category, SUM(T.Amount) AS TotalRevenue
FROM Product P
JOIN Transaction T ON P.ProductID = T.ProductID
GROUP BY P.P_Category;
```

* Top-selling product per category:

```sql
WITH RankedProducts AS (
    SELECT
        P.ProductID, P.P_NAME, P.P_Category,
        RANK() OVER (PARTITION BY P.P_Category ORDER BY COUNT(T.TransactionID) DESC) AS ProductRank
    FROM Product P
    LEFT JOIN Transaction T ON P.ProductID = T.ProductID
    GROUP BY P.ProductID, P.P_NAME, P.P_Category
)
SELECT * FROM RankedProducts WHERE ProductRank = 1;
```

---

## 📊 Key Features

* **Customer Insights**: Loyalty points, top customers, transaction frequency
* **Revenue Analysis**: Revenue by product category, average transaction amounts
* **Inventory Management**: Identify products with low/high stock, popular items
* **Employee Management**: Supervisor-employee relationships, serving records

---

## 👨‍💻 Team Members

* Phakphop Phunphoem
* Poottapol Poonna
* Tanasub Rattanaharirak
* Supasri Seekane

---

## 🏫 Acknowledgements

Mahidol University – Faculty of ICT
Course: **ITCS241 – Database Management Systems**
Lecturers: Dr. Petch Sajjacholapunt, Asst. Prof. Dr. Jidapa Kraisangka, Asst. Prof. Dr. Preecha Tangworakitthaworn

---

## 🚀 How to Run

1. Clone this repository:

```bash
git clone https://github.com/yourusername/supermarket-database.git
```

2. Import the SQL file into MySQL:

```sql
SOURCE PJ2-Sec2Gr12DB.sql;
```

3. Run queries to test the system.

---

## 📌 License

This project is for academic purposes only.
