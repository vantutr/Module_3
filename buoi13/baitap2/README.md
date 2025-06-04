# 🌐 JDBC và CRUD trong Java

Tài liệu này hướng dẫn cách sử dụng JDBC (Java Database Connectivity) để thực hiện các thao tác CRUD (Create, Read, Update, Delete) trong ứng dụng Java kết nối với cơ sở dữ liệu MySQL.

---

## ✅ JDBC là gì?

**JDBC** là một API trong Java giúp kết nối và thao tác với **Cơ sở dữ liệu quan hệ** như MySQL, PostgreSQL, Oracle, SQL Server...

> JDBC cho phép bạn thực hiện các truy vấn SQL (SELECT, INSERT, UPDATE, DELETE) trực tiếp từ Java.

---

## ✅ Các bước kết nối JDBC

1. Nạp driver JDBC
2. Tạo kết nối đến cơ sở dữ liệu (Connection)
3. Tạo và thực thi câu lệnh SQL (PreparedStatement / Statement)
4. Xử lý kết quả (ResultSet)
5. Đóng kết nối

---

## ✅ Mô hình CSDL mẫu

    ```sql
    CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price INT,
    description TEXT
    );  

## ✅ Cấu trúc project
    ```sql
    src/
    ├── model/
    │   └── Product.java
    ├── utils/
    │   └── DBConnection.java
    ├── dao/
    │   └── ProductDAO.java
    └── Main.java

## ✅ Các thành phần chính
- 1️⃣ **`Product.java` – Model**
    ```sql
    public class Product {
    private int id;
    private String name;
    private int price;
    private String description;

    // Constructor, getters, setters
    }

- 2️⃣ `DBConnection.java` – Kết nối database
    ```sql
    import java.sql.Connection;
    import java.sql.DriverManager;

    public class DBConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "password";

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    }

 
