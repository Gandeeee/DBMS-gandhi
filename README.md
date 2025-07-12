<div align="center">
  <h1>🚀 QOTS - Courier & Shipping DBMS 🚀</h1>
  <p>
    <strong>A comprehensive Database Management System designed to handle all operational aspects of a modern courier and shipping service.</strong>
  </p>
</div>

---

> **Welcome to the official repository for the QOTS Database Management System!** This project provides a robust and scalable database schema for managing logistics, from package registration to final delivery, ensuring data integrity and efficient information retrieval.

---

## 📖 Table of Contents

- [About The Project](#-about-the-project)
- [✨ Key Features](#-key-features)
- [🔧 Getting Started](#-getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [📂 Database Schema](#-database-schema)
- [💡 Usage Examples](#-usage-examples)
- [🤝 Contributing](#-contributing)
- [📝 License](#-license)
- [📧 Contact](#-contact)

---

## 🎯 About The Project

QOTS (Quality on Time Service) is a fictional courier service, and this project is the backbone of its operations. It's a relational database designed to meticulously track customers, packages, transactions, and the entire shipping journey. The schema is normalized to reduce redundancy and improve data integrity, making it an excellent case study for database design and implementation.

This system is built to answer critical business questions like:
- *What is the current status of a package?*
- *Which promotions are most effective?*
- *What are the busiest shipping routes?*
- *How can we optimize warehouse transit times?*


---

## ✨ Key Features

This database system covers a wide array of functionalities essential for a courier service:

- **👤 Customer Management**: Handles registered and non-registered customer data.
- **📦 End-to-End Package Tracking**: Follows a package from sender to receiver, including all transit points.
- **💳 Transaction & Invoicing**: Manages payments, applies promos, and generates detailed invoices.
- **💸 Promotions Engine**: Allows for the creation and application of various discounts.
- **🚚 Multiple Shipping Services**: Supports different delivery types like Regular, Express, and Cargo.
- **🏢 Warehouse & Route Logistics**: Manages multiple warehouses and complex delivery routes.
- **⭐ Customer Feedback System**: Collects and stores package reviews and ratings.

---

## 🔧 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

You need a running SQL server instance. This project is developed using standard SQL and should be compatible with most relational database systems like:
- **MySQL**
- **PostgreSQL**
- **Microsoft SQL Server**
- **Oracle Database**

### Installation

1.  **Clone the Repository**
    ```sh
    git clone [https://github.com/dbms-gandhi/DBMS-gandhi.git](https://github.com/dbms-gandhi/DBMS-gandhi.git)
    ```

2.  **Navigate to the Project Directory**
    ```sh
    cd DBMS-gandhi
    ```

3.  **Set Up the Database**
    - Log in to your SQL server.
    - Create the database for the project.
      ```sql
      CREATE DATABASE QOTS;
      USE QOTS;
      ```

4.  **Create the Tables**
    - Run the `CreatingData.sql` script to set up the database schema. This file contains all the `CREATE TABLE` statements and defines the relationships between them.
      *You can execute the SQL script using your database's command-line interface or a GUI tool like DBeaver, MySQL Workbench, or pgAdmin.*

5.  **Populate with Dummy Data (Optional)**
    - To see the system in action, run the `DummyData.sql` script. This will fill the tables with sample data, including customers, packages, and transactions.

---

## 📂 Database Schema

The database is composed of several interconnected tables, each serving a specific purpose. Below is a high-level overview of the main tables. For a complete definition, please see the `CreatingData.sql` file.

| Table Name                  | Description                                                                          |
| --------------------------- | ------------------------------------------------------------------------------------ |
| `Pelanggan`                 | Stores information about the customers.                                    |
| `Paket`                     | Contains details for every package, acting as a central hub for tracking.  |
| `Transaksi`                 | Records all financial transactions, linking packages, customers, and promos. |
| `Faktur`                    | Generates invoices for each transaction.                                   |
| `Status_Pengiriman`         | Logs the real-time status and location of each package.                    |
| `Layanan_Pengiriman`        | Defines the available shipping services (e.g., Express, Regular).          |
| `Gudang`                    | Manages a network of warehouses.                                           |
| `Rute_Pengiriman`           | Maps the transit journey of a package from one warehouse to another.         |
| `Promo`                     | Stores details about promotional offers and discounts.                     |
| `Ulasan_Paket`              | Collects ratings and reviews from receivers.                               |

---

## 💡 Usage Examples

Once the database is populated, you can perform various queries to retrieve useful information.

**Check the status of a specific package:**
```sql
-- Find the current location and timestamp for package 'RESI001'
SELECT
    p.No_Resi,
    sp.Timestamps,
    sp.Lokasi
FROM Paket p
JOIN Status_Pengiriman sp ON p.ID_Status_Pengiriman = sp.ID_Status_Pengiriman
WHERE p.No_Resi = 'RESI001';
