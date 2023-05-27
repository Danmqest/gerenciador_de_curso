<html>
<body>
<head>
    <title>Dados Pessoais</title>
    <link rel="stylesheet" href="style.css" />
    <meta charset="UTF-8">
    <form id="form" action="/create-user" method="post">
        <h2>Alteração Cadastral</h2>

        <label for="nome">Nome*:</label>
        <input type="text" id="nome" name="nome" value=""
               placeholder="Digite seu nome completo" class="inputs required" oninput="nameValidate()"
        />

        <label for="nome">Login*:</label>
        <input type="text" id="login" name="login" value="${param.name}"
                placeholder="" class="inputs required" oninput="nameValidate()"
        />
        <span class="span-required">Deve ter mais de 3 caracteres</span>

        <label for="senha">Senha Atual*:</label>
        <input id="password" type="password" name="password" placeholder="Senha"
                class="inputs required" /> <!--value="${param.password}" oninput="validateMainPassword()"-->

        <span class="span-required">Senha deve ter no minimo 8 caracteres</span>

        <label for="senha">Digite Nova Senha*:</label>
        <input type="password" name="password" placeholder="Nova Senha"
                class="inputs required" oninput="comparePassword()"
        />
        <span class="span-required">as senhas não conferem</span>

        <input type="hidden" id="id" name="id" value="${param.id}">
        <input type="submit" value="Alterar"/>

    </form>
    <script src="ValidaFormulario.js"></script>
</head>
</body>
</html>



