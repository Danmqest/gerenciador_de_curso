<html lang="pt-br">
<head>
  <%@ page contentType="text/html; charset=UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <title>Document</title>
</head>
<body>
<table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="username" items="${username}">
        <tr>
          <td>${username.id}</td>
          <td>${username.name}</td>
          <td>
            <form action="/delete-user" method="post">
              <input type="hidden" name="id" value="${username.id}">
              <button type="submit">Delete</button>
            </form>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>