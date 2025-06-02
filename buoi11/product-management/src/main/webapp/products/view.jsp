<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Chi tiết sản phẩm</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <h1 class="text-primary mb-4">Chi tiết sản phẩm</h1>

  <a href="/products" class="btn btn-secondary mb-4">← Quay lại danh sách sản phẩm</a>

  <div class="card shadow-sm">
    <div class="card-body">
      <table class="table table-bordered mb-0">
        <tr>
          <th scope="row" style="width: 20%;">Tên:</th>
          <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
          <th scope="row">Mô tả:</th>
          <td>${requestScope["product"].getDescription()}</td>
        </tr>
        <tr>
          <th scope="row">Giá:</th>
          <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
          <th scope="row">Ảnh:</th>
          <td>
              <img src="${product.image}" alt="Product Image" class="img-fluid rounded" style="max-width: 300px;">
          </td>
        </tr>
      </table>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
