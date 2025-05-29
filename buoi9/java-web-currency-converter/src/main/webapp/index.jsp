<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
  <h2>Chuyển đổi tiền tệ</h2>
  <form action="convert" method="post">
    <label>Rate:</label>
    <input type="text" name="rate" placeholder="Nhập tỷ giá" >
    <label>USD:</label>
    <input type="text" name="usd" placeholder="Nhập số tiền usd">
    <input type="submit" id = "submit" value = "Converter">
  </form>
</body>
</html>