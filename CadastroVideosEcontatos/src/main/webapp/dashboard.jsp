<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>

<div>
    <div>
        <h1>Cars</h1>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="car" items="${cars}">
                <tr>
                    <td>${car.id}</td>
                    <td>${car.name}</td>
                    <td>${car.email}</td>
                    <td>${car.mensagem}</td>
                    <td>
                        <form action="/delete-car" method="post">
                            <input type="hidden" id="id" name="id" value="${car.id}">
                            <button type="submit">Delete<img src="img.icon/icone.lixeira.jpg" width="10px" height="5px" /></button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <form action="/CadastroVideos.htmlontato.html" method="get">
            <button type="submit">New Record </button>
        </form>
    </div>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-align: left;
            padding: 10px;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        form {
            display: inline-block;
        }

        .add-car-button {
            background-image: url("/img.icon/icone.lixeira.jpg");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: 80%;
            padding: 10px 30px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            color: white;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
        }

        .add-car-button:hover {
            background-color: #3E8E41;
        }

        input[type="hidden"] {
            display: none;
        }
    </style>


</div>
</body>
</html>```
