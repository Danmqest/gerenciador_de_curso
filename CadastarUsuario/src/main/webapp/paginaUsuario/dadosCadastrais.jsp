<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/atualizaCadastro.css">
<% String errorMessage = request.getParameter("error"); %>
</head>
<body>

    <form id="form" action="/create-user" method="post">
        <h2>Alterar cadastro</h2>

        <label for="nome">Nome:</label>
        <input
                type="text"
                id="username"
                name="username"
                value="${param.name}"
                placeholder="Digite seu nome completo"
                class="inputs required"

        />

        <span class="span-required">Deve ter mais de 3 caracteres</span>


        <label for="senha">Senha:</label>
        <input
                id="password"
                type="password"
                name="password"
                placeholder="Digite sua senha"
                class="inputs required"
                value="${param.password}"

        />
        <span class="span-required">Senha deve ter no minimo 8 caracteres</span>

        <label for="senha">Digite novamente a senha:</label>
        <input
                type="password"
                name="confirmPassword"
                placeholder="Digite sua senha"
                class="inputs required"

        />
        <span class="span-required">as senhas não conferem</span>

        <%-- Exibir a mensagem de erro, se houver --%>
                <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
                    <p class="error-message"><%= errorMessage %></p>
                <% } %>
        <input type="hidden" id="id" name="id" value="${param.id}">
        <input type="submit" value="Cadastrar"/>
        <a href = "http://localhost:8080/telaLogin/Login.jsp">Login</a>
    </form>
</body>
</html>



