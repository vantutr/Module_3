<%@ page import="java.util.List" %>
<%@ page import="com.example.baitap1.model.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body {
            font-family: "Segoe UI", sans-serif;
            background-color: #f2f2f2;
            padding: 30px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        img {
            border-radius: 50%;
            border: 2px solid #3498db;
            width: 50px;
            height: 50px;
            object-fit: cover;
        }
    </style>
</head>
<body>

<h1>Danh sách khách hàng</h1>

<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Mai Văn Hoàng", "1993-08-20", "Hà Nội", "https://tiemchupanh.com/wp-content/uploads/2024/07/HNMT4969.jpg"));
    customers.add(new Customer("Nguyễn Văn Nam", "1993-08-20", "Hà Nội", "https://tiemchupanh.com/wp-content/uploads/2024/07/HNMT4969.jpg"));
    customers.add(new Customer("Phạm Thị Lan", "1990-02-10", "Đà Nẵng", "https://tiemchupanh.com/wp-content/uploads/2024/07/HNMT4969.jpg"));
    customers.add(new Customer("Trần Hữu Tùng", "1995-11-05", "TP.HCM", "https://tiemchupanh.com/wp-content/uploads/2024/07/HNMT4969.jpg"));
    customers.add(new Customer("Lê Thị Hồng", "1992-04-18", "Cần Thơ", "https://tiemchupanh.com/wp-content/uploads/2024/07/HNMT4969.jpg"));
    request.setAttribute("customersList", customers);
%>

<table>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customersList}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.age}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.image}" alt="Ảnh khách hàng"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
