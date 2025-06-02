<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Edit Product</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <h1 class="mb-4 text-primary">Chỉnh sửa sản phẩm</h1>

  <c:if test='${requestScope["message"] != null}'>
    <div class="alert alert-info">${requestScope["message"]}</div>
  </c:if>

  <p>
    <a href="/products" class="btn btn-secondary mb-3">← Quay lại danh sách sản phẩm</a>
  </p>

  <form method="post" class="border p-4 bg-white shadow-sm rounded">
    <fieldset>
      <legend class="mb-4">Thông tin sản phẩm</legend>

      <div class="mb-3">
        <label for="name" class="form-label">Tên sản phẩm</label>
        <input type="text" class="form-control" name="name" id="name" value="${requestScope["product"].getName()}">
      </div>

      <div class="mb-3">
        <label for="description" class="form-label">Mô tả</label>
        <input type="text" class="form-control" name="description" id="description" value="${requestScope["product"].getDescription()}">
      </div>

      <div class="mb-3">
        <label for="price" class="form-label">Giá</label>
        <input type="number" step="0.01" class="form-control" name="price" id="price" value="${requestScope["product"].getPrice()}">
      </div>

      <div class="mb-3">
        <label for="image" class="form-label">Ảnh (URL)</label>
        <input type="text" class="form-control" name="image" id="image" value="${requestScope["product"].getImage()}">
      </div>

      <button type="submit" class="btn btn-success">Cập nhật sản phẩm</button>
    </fieldset>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
