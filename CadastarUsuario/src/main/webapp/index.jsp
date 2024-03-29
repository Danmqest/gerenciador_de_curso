<html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String errorMessage = request.getParameter("error"); %>
<body>
<head>
    <title>Cadastro</title>
    <link rel="stylesheet" href="style.css" />
    <meta charset="UTF-8">
   <div id="container">
    <form id="form" action="/create-user" method="post">
        <h2>Cadastro</h2>

        <label for="nome">Nome:</label>
        <input
                type="text"
                id="username"
                name="username"
                value="${param.name}"
                placeholder="Digite seu nome completo"
                class="inputs required"
                oninput="nameValidate()"
        />

        <span class="span-required">Deve ter mais de 3 caracteres</span>

        <label for="email">Email:</label>
        <input
                type="email"
                id="email"
                name="email"
                placeholder="Digite seu email"
                class="inputs required"
                oninput="emailRegex()"
        />
        <span class="span-required">email invalido</span>

        <label for="senha">Senha:</label>
        <input
                id="password"
                type="password"
                name="password"
                placeholder="Digite sua senha"
                class="inputs required"
                value="${param.password}"
                oninput="validateMainPassword()"
        />
        <span class="span-required">Senha deve ter no minimo 8 caracteres</span>

        <label for="senha">Digite novamente a senha:</label>
        <input
                type="password"
                name="confirmPassword"
                placeholder="Digite sua senha"
                class="inputs required"
                oninput="comparePassword()"
        />
        <span class="span-required">as senhas não conferem</span>

        <%-- Exibir a mensagem de erro, se houver --%>
                <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
                    <p class="error-message"><%= errorMessage %></p>
                <% } %>

        <input type="hidden" id="id" name="id" value="${param.id}">
            <input type="submit" value="Cadastrar"/>
            <br>
            <a href = "http://localhost:8080/telaLogin/Login.jsp">Login</a>

    </form>
   </div>
    <script src="ValidaFormulario.js"></script>
</head>
</body>
</html>



