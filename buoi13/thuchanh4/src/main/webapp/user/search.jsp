<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>User Management Application</title>
</head>
<body>
<center>
  <h1>User Management</h1>
  <h2>
    <a href="/users?action=users">List All Users</a>
  </h2>
</center>
<div align="center">
  <form method="post" action="/users?action=search">
    <table border="1" cellpadding="5">
      <caption>
        <h2>Search Users by Country</h2>
      </caption>
      <tr>
        <th>Country:</th>
        <td>
          <input type="text" name="country" id="country" size="15"/>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <input type="submit" value="Search"/>
        </td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>