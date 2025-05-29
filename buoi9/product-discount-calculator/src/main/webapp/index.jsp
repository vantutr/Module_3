<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Product Discount Calculator</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex justify-content-center align-items-center vh-100">
<div class="card shadow p-4" style="width: 100%; max-width: 500px;">
  <h2 class="text-center mb-4">Ứng dụng Product Discount Calculator</h2>
  <form action="index" method="get">
    <div class="mb-3">
      <label for="description" class="form-label">Mô tả sản phẩm</label>
      <textarea class="form-control" id="description" name="description" rows="4" placeholder="Nhập mô tả sản phẩm..."></textarea>
    </div>
    <div class="mb-3">
      <label for="price" class="form-label">Giá sản phẩm</label>
      <input type="number" class="form-control" id="price" name="price" placeholder="Nhập giá sản phẩm">
    </div>
    <div class="mb-3">
      <label for="discount_percent" class="form-label">Tỷ lệ chiết khấu (%)</label>
      <input type="text" class="form-control" id="discount_percent" name="discount_percent" placeholder="Tỷ lệ chiết khấu">
    </div>
    <button type="submit" class="btn btn-success w-100">Tính chiết khấu</button>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
