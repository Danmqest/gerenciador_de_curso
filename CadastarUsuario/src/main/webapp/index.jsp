<html>
<body>
<head>
    <title>Cadastro de Aluno e Professor</title>
    <link rel="stylesheet" href="style.css" />
    <form id="form" action="/create-user" method="post">
        <h2>Cadastro</h2>
        <label for="nome">Nome:</label>
        <input
                type="text"
                id="nome"
                name="nome"
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
                name="password"
                placeholder="Digite sua senha"
                class="inputs required"
                oninput="comparePassword()"
        />
        <span class="span-required">as senhas não conferem</span>

        <input type="hidden" id="id" name="id" value="${param.id}">
        <input type="submit" value="Cadastrar"/>
    </form>
    <a href = "http://localhost:8080/telaLogin/index.html">Login</a>
    <script src="ValidaFormulario.js"></script>
</head>
</body>
</html>

<%-- onclick="window.location.href='http://localhost:8080/CursoStore/inicio.html'" --%>

