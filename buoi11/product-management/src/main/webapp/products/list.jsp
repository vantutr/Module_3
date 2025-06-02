<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
<h1 class="text-primary mb-4">Product List</h1>

<div class="mb-3">
    <a href="/products?action=create" class="btn btn-success">➕ Create New Product</a>
</div>

<table class="table table-striped table-bordered">
<thead class="table-dark">
<tr>
    <th>Name</th>
    <th>Description</th>
    <th>Price (VND)</th>
    <th>Image</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>
</thead>
<tbody>
<c:forEach items='${requestScope["products"]}' var="product">
    <tr>
    <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
    <td>${product.getDescription()}</td>
    <td>${product.getPrice()}</td>
    <td><img src="${product.getImage()}" alt="" class="img-thumbnail" style="max-width: 100px;"></td>
    <td><a href="/products?action=edit&id=${product.getId()}" class="btn btn-primary btn-sm">Edit</a></td>
    <td><a href="/products?action=delete&id=${product.getId()}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</a></td>
    </tr>
</c:forEach>
    </tbody>
    </table>
    </div>

    <!-- Bootstrap JS Bundle (optional for interactive components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    </html>
