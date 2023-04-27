<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="dashboard.css" />
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>USERS</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Password</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${user}">
        <tr>
                <td>${user.id}</td>
                 <td>${user.name}</td>
                  <td>${user.password}</td>
            <td>
               <form action="/delete-user" method="post">
                    <input type="hidden" id="id" name="id" value="${user.id}">
                    <button type="submit">Delete</button>
                    <span> | </span>
                    <a href="index.jsp?id=${user.id}&name=${user.name}">Update</a>
                </form>
            </td>
        </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>