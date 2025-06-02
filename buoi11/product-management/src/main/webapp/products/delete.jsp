<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xóa sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h1 class="text-danger mb-4">Xóa sản phẩm</h1>

    <div class="alert alert-warning">
        <h4 class="alert-heading">Bạn có chắc chắn muốn xóa sản phẩm này?</h4>
    </div>

    <form method="post" class="card shadow-sm p-4 bg-white">
        <fieldset>
            <legend class="mb-3 text-muted">Thông tin sản phẩm</legend>

            <table class="table table-bordered">
                <tr>
                    <th scope="row">Tên:</th>
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
                    <td>${requestScope["product"].getImage()}</td>
                </tr>
            </table>

            <div class="d-flex justify-content-between mt-4">
                <button type="submit" class="btn btn-danger">Xóa sản phẩm</button>
                <a href="/products" class="btn btn-secondary">Quay lại danh sách</a>
            </div>
        </fieldset>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
