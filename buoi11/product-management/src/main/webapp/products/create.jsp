<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Create New Customer</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <h1 class="mb-4 text-primary">Create New Customer</h1>

  <c:if test='${requestScope["message"] != null}'>
    <div class="alert alert-success" role="alert">
        ${requestScope["message"]}
    </div>
  </c:if>

  <div class="mb-3">
    <a href="/products" class="btn btn-secondary">← Back to Products List</a>
  </div>

  <form method="post" class="border rounded p-4 bg-light shadow-sm">
    <fieldset>
      <legend class="mb-3">Product Information</legend>

      <div class="mb-3">
        <label for="name" class="form-label">Name:</label>
        <input type="text" name="name" id="name" class="form-control" required>
      </div>

      <div class="mb-3">
        <label for="description" class="form-label">Description:</label>
        <input type="text" name="description" id="description" class="form-control">
      </div>

      <div class="mb-3">
        <label for="price" class="form-label">Price (VND):</label>
        <input type="number" name="price" id="price" class="form-control" min="0" required>
      </div>

      <div class="mb-4">
        <label for="image" class="form-label">Image URL:</label>
        <input type="text" name="image" id="image" class="form-control">
      </div>

      <button type="submit" class="btn btn-success">Create Customer</button>
    </fieldset>
  </form>
</div>

<!-- Bootstrap JS (optional, for interactive features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
