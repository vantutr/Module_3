# 📚 Các hàm thông dụng trong SQL

---

## 🔢 1. Hàm AVG()
### 📌 Khái niệm:
`AVG()` trả về **giá trị trung bình** của một cột số.
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT AVG(column_name) FROM table_name;
### 📋 Ví dụ:
- **Tính trung bình lương của tất cả nhân viên:**:
    ```sql
    SELECT AVG(salary) AS AverageSalary
    FROM employees;
  
## 🔢 2. Hàm COUNT()
### 📌 Khái niệm:
`COUNT()` trả về **số lượng bản ghi (rows)** phù hợp với điều kiện truy vấn.
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT COUNT(column_name) FROM table_name;
    -- hoặc:
    SELECT COUNT(*) FROM table_name;

### 📋 Ví dụ:
- **Đếm số lượng nhân viên:**:
    ```sql
    SELECT COUNT(*) AS TotalEmployees
    FROM employees;

## 🔢 3. Hàm MAX()
### 📌 Khái niệm:
`MAX()` trả về **giá trị lớn nhất** trong một cột.
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT MAX(column_name) FROM table_name;
### 📋 Ví dụ:
- **Tìm mức lương cao nhất:**:
    ```sql
    SELECT MAX(salary) AS HighestSalary
    FROM employees;

## 🔢 4. Hàm MIN()
### 📌 Khái niệm:
`MIN()` trả về **giá trị nhỏ nhất** trong một cột.
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT MIN(column_name) FROM table_name;
### 📋 Ví dụ:
- **Tìm mức lương thấp nhất:**:
    ```sql
    SELECT MIN(salary) AS LowestSalary
    FROM employees;

## 🔢 5. Hàm SUM()
### 📌 Khái niệm:
`SUM()` trả về **tổng các giá trị** trong một cột số.
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT SUM(column_name) FROM table_name;
### 📋 Ví dụ:
  - **Tính tổng lương phải trả cho toàn bộ nhân viên:**:
      ```sql
      SELECT SUM(salary) AS TotalSalary
      FROM employees;

## 🔤 6. Hàm UCASE() (hoặc UPPER())
### 📌 Khái niệm:
Chuyển tất cả ký tự trong chuỗi thành **chữ in hoa.**
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT UCASE(column_name) FROM table_name;
    -- hoặc:
    SELECT UPPER(column_name) FROM table_name;

### 📋 Ví dụ:
- **Chuyển tên nhân viên thành chữ hoa:**:
    ```sql
    SELECT UCASE(name) AS UpperName
    FROM employees;

## 🔡 7. Hàm LCASE() (hoặc LOWER())
### 📌 Khái niệm:
Chuyển tất cả ký tự trong chuỗi **thành chữ thường.**
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT LCASE(column_name) FROM table_name;
    -- hoặc:
    SELECT LOWER(column_name) FROM table_name;
### 📋 Ví dụ:
- **Chuyển email thành chữ thường:**:
    ```sql
    SELECT LCASE(email) AS LowerEmail
    FROM employees;

## 📏 8. Hàm LEN() (hoặc LENGTH())
### 📌 Khái niệm:
`LEN()` hoặc `LENGTH()` trả về **độ dài chuỗi ký tự** (tính số ký tự trong chuỗi).
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT LEN(column_name) FROM table_name;
    -- hoặc:
    SELECT LENGTH(column_name) FROM table_name;

### 📋 Ví dụ:
- **Tính độ dài của tên nhân viên:**:
    ```sql
    SELECT LENGTH(name) AS NameLength
    FROM employees;

## 🕒 9. Hàm NOW()
### 📌 Khái niệm:
`NOW()` trả về **ngày và giờ hiện tại** của hệ thống.
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT NOW();
### 📋 Ví dụ:
- **Lấy ngày giờ hiện tại:**:
    ```sql
    SELECT NOW() AS CurrentDateTime;

## 🧮 10. Mệnh đề GROUP BY
### 📌 Khái niệm:
`GROUP BY` dùng để nhóm dữ liệu theo một hoặc nhiều cột, thường kết hợp với các hàm tổng hợp như `SUM()`, `AVG()`, `COUNT()`…
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT column_name, AGGREGATE_FUNCTION(column_name)
    FROM table_name
    GROUP BY column_name;

### 📋 Ví dụ:
- **Tính tổng lương theo phòng ban:**:
    ```sql
    SELECT department, SUM(salary) AS TotalSalary
    FROM employees
    GROUP BY department;

## 🧾 11. Mệnh đề HAVING
### 📌 Khái niệm:
`HAVING` được dùng để lọc nhóm dữ liệu sau khi dùng `GROUP BY`. (Khác với `WHERE` là dùng để lọc từng bản ghi trước khi nhóm).
### 🧾 Cú pháp:
- **Cú pháp**:
    ```sql
    SELECT column_name, AGGREGATE_FUNCTION(column_name)
    FROM table_name
    GROUP BY column_name
    HAVING condition;

### 📋 Ví dụ:
- **Chỉ hiển thị những phòng ban có tổng lương lớn hơn 100000:**:
    ```sql
    SELECT department, SUM(salary) AS TotalSalary
    FROM employees
    GROUP BY department
    HAVING SUM(salary) > 100000;
