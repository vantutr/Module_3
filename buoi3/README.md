# 📚 Các mệnh đề trong SQL

---

## 🗂️ 1. Các mệnh đề (clause) cơ bản trong một câu truy vấn SQL

| Mệnh đề                                                                               | Khái niệm                                         | Cú pháp chung                    | Ví dụ                                                                           |                                               |
| ------------------------------------------------------------------------------------- | ------------------------------------------------- | -------------------------------- | ------------------------------------------------------------------------------- | --------------------------------------------- |
| **SELECT**                                                                            | Chọn cột cần lấy dữ liệu                          | `SELECT <danh_sách_cột>`         | `SELECT id, name FROM customers;`                                               |                                               |
| **FROM**                                                                              | Chỉ định bảng (hoặc view, sub-query) chứa dữ liệu | `... FROM <bảng/nguồn_dữ_liệu>`  | `SELECT * FROM orders;`                                                         |                                               |
| **WHERE**                                                                             | Lọc hàng thoả điều kiện                           | `... WHERE <điều_kiện>`          | `SELECT * FROM orders WHERE status = 'PAID';`                                   |                                               |
| **GROUP BY**                                                                          | Gom nhóm các hàng theo cột/biểu thức              | `... GROUP BY <cột>`             | `SELECT country, COUNT(*) FROM customers GROUP BY country;`                     |                                               |
| **HAVING**                                                                            | Lọc nhóm sau khi GROUP BY                         | `... HAVING <điều_kiện_tập_hợp>` | `SELECT country, COUNT(*) cnt FROM customers GROUP BY country HAVING cnt > 10;` |                                               |
| **ORDER BY**                                                                          | Sắp xếp kết quả                                   | \`... ORDER BY \<cột> \[ASC      | DESC]\`                                                                         | `SELECT * FROM products ORDER BY price DESC;` |
| **LIMIT / OFFSET** (MySQL, PostgreSQL) <br> **TOP / FETCH** (SQL Server, Oracle 12c+) | Giới hạn số hàng & phân trang                     | `... LIMIT n OFFSET m`           | `SELECT * FROM logs ORDER BY ts DESC LIMIT 20 OFFSET 40;`                       |                                               |

- **Thứ tự thực thi nội bộ của máy chủ SQL thường là: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT.**

## 🗂️ 2. Toán tử logic AND, OR, NOT trong SQL
| Toán tử | Chức năng                                             | Cú pháp & lưu ý                    | Ví dụ                                   |
| ------- | ----------------------------------------------------- | ---------------------------------- | --------------------------------------- |
| **AND** | Tất cả điều kiện phải đúng (mệnh đề **WHERE/HAVING**) | `<đk1> AND <đk2>`                  | `WHERE status='PAID' AND amount > 100;` |
| **OR**  | Một trong các điều kiện đúng                          | `<đk1> OR <đk2>`                   | `WHERE country='VN' OR country='TH';`   |
| **NOT** | Phủ định điều kiện                                    | `NOT <đk>` hoặc `!<đk>` (tùy DBMS) | `WHERE NOT (status='CANCELLED');`       |

**Quy tắc ưu tiên**
### 1. `NOT`
### 2. `AND`
### 3. `OR`
Để tránh nhầm lẫn, dùng ngoặc rõ ràng:
- **VD**:
    ```sql
    -- Khách từ VN hoặc TH từng thanh toán >100
    SELECT * FROM orders
    WHERE (country IN ('VN','TH')) AND amount > 100;

## 🗂️ 3. Câu lệnh JOIN (kết nối bảng)
### 3.1 Khái niệm
JOIN dùng để kết hợp dữ liệu từ nhiều bảng dựa trên mối quan hệ giữa các cột (thường là khóa chính - khóa ngoại).

| Loại JOIN                         | Mô tả                                                                       |
| --------------------------------- | --------------------------------------------------------------------------- |
| **INNER JOIN**                    | Trả về các bản ghi có giá trị khớp ở cả hai bảng                            |
| **LEFT JOIN** (LEFT OUTER JOIN)   | Trả về tất cả bản ghi từ bảng bên trái và các bản ghi khớp từ bảng bên phải |
| **RIGHT JOIN** (RIGHT OUTER JOIN) | Ngược lại với LEFT JOIN                                                     |
| **FULL JOIN** (FULL OUTER JOIN)   | Trả về tất cả bản ghi khi có khớp ở ít nhất một bảng                        |

### 3.2. Cú pháp tổng quát và ví dụ
Giả sử có hai bảng:

- **Students**

| student\_id | name  | department\_id |
| ----------- | ----- | -------------- |
| 1           | Alice | 101            |
| 2           | Bob   | 102            |

- **Departments**

| department\_id | department\_name |
| -------------- | ---------------- |
| 101            | IT               |
| 102            | Math             |

#### a. INNER JOIN
- **VD**
    ```sql
    SELECT Students.name, Departments.department_name
    FROM Students
    INNER JOIN Departments
    ON Students.department_id = Departments.department_id;

#### b. LEFT JOIN
- **VD**
    ```sql
    SELECT Students.name, Departments.department_name
    FROM Students
    LEFT JOIN Departments
    ON Students.department_id = Departments.department_id;

#### c. RIGHT JOIN
- **VD**    
    ```sql
    SELECT Students.name, Departments.department_name
    FROM Students
    RIGHT JOIN Departments
    ON Students.department_id = Departments.department_id;

#### d. FULL JOIN (tuỳ hệ CSDL có hỗ trợ)
- **VD**
    ```sql
    SELECT Students.name, Departments.department_name
    FROM Students
    FULL OUTER JOIN Departments
    ON Students.department_id = Departments.department_id;



