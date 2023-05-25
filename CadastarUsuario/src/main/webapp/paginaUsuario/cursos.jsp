<%--
  Created by IntelliJ IDEA.
  User: gda_a
  Date: 23/05/2023
  Time: 01:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/sobre.css">
<%--    <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/reset.css">--%>
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/main.css">
<head>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand" href="index.html">
            <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90" height="72" class="d-inline-block align-text-top">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse navbar-dark" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="usuarioPerfil.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cursos.jsp">Cursos</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <form action="https://www.google.com/search" method="GET" class="form-inline my-2 my-lg-0">
                <div class="input-group">
                    <input class="form-control mr-sm-2" type="text" name="q" placeholder="Pesquisar..." aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
                    </div>
                </div>
            </form>
        </div>
    </nav>



    <title>Lista de Cursos de Tecnologia</title>
    <link rel="stylesheet" type="text/css" href="styles.css">

    <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/sobre.css">
    <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/reset.css">

</head>
<body-cursos>
<h1>Lista de Cursos de Tecnologia</h1>

<ul class="course-list">
    <li>
        <h2>Curso de Desenvolvimento Web</h2>
        <p>Aprenda as principais tecnologias web, como HTML, CSS, JavaScript e frameworks populares.</p>
    </li>
    <li>
        <h2>Curso de Ciência de Dados</h2>
        <p>Explore técnicas de análise de dados, aprendizado de máquina e visualização de dados.</p>
    </li>
    <li>
        <h2>Curso de Segurança da Informação</h2>
        <p>Aprenda a proteger sistemas e dados contra ameaças cibernéticas.</p>
    </li>
    <li>
        <h2>Curso de Desenvolvimento de Aplicativos Móveis</h2>
        <p>Crie aplicativos para dispositivos móveis usando frameworks como React Native ou Flutter.</p>
    </li>
</ul>
</body-cursos>
</html>

