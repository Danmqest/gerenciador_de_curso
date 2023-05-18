<!DOCTYPE html>
<html>
<head>
    <title>Tela de Login</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="http://localhost:8080/telaLogin/CSS/Login.css">
</head>
<body>
<div class="container">
    <form action="/login" method="post">
        <h2>Login</h2>
        <label for="email">Nome</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Senha:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Entrar">

        <br>
         <span>${requestScope.message}</span>
        <a href = "http://localhost:8080/index.jsp">Cadastre-se</a>
    </form>
</div>
</body>
</html>

