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
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/main.css">
    <link href="http://localhost:8080/paginaUsuario/img/cs%20logo.png" rel="icon"> <link href="http://localhost:8080/paginaUsuario/img/cs%20logo.png" rel="icon">
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/estiloTelaUsuario.css" charset="UTF-8">
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/bootstrap.css" charset="UTF-8">
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/index.css" charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css"
      charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"
      charset="UTF-8">
<%--    ------------------------------------------------------------------------------------------------------------%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/sobre.css">
<%--    <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/reset.css">--%>
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/main.css">
<link href="http://localhost:8080/paginaUsuario/img/cs%20logo.png" rel="icon">
<head>
<body>

<header>
    <div class="container-logo">
        <div class="logo-imagem">
            <a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">
                <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90"
                     height="72"
                     class="d-inline-block align-text-top">
            </a>
        </div>
        <div class="logo-texto"></div>
    </div>

    <div class="menu">
        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">Home </a></li>
<%--            <li><a href="http://localhost:8080/paginaUsuario/cursos.jsp">Cursos </a></li>--%>
            <li><a href="http://localhost:8080/paginaUsuario/sobre.jsp" target="_blank">Sobre </a></li>
        </ul>
    </div>
    <c:if test="${sessionScope.username != null}">
        <span>${sessionScope.username}</span>
    </c:if>

    <%---------------------------------------------------NaverBar e pesquisa link-------------------------------------------------%>
    <div class="search-box">
        <form action="https://www.google.com/search" method="GET" class="form-inline my-2 my-lg-0">
            <div class="input-group">
                <input class="form-control mr-sm-2" type="text" name="q" placeholder="Pesquisar..." aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img class="loupe"
                                                                                            src="http://localhost:8080/paginaUsuario/img/lupa-arredondada.png"
                                                                                            alt="lupa" width="25px"
                                                                                            height="25px"></button>
                </div>
            </div>
        </form>
        </a>
    </div>
</header>

<%--<nav class="navbar navbar-expand-lg navbar-light bg-dark">--%>
<%--    <a class="navbar-brand" href="index.html">--%>
<%--        <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90" height="72"--%>
<%--             class="d-inline-block align-text-top">--%>
<%--    </a>--%>
<%--    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"--%>
<%--            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse navbar-dark" id="navbarSupportedContent">--%>
<%--        <ul class="navbar-nav mr-auto">--%>
<%--            <li class="nav-item active">--%>
<%--                <a class="nav-link" href="usuarioPerfil.jsp">Home <span class="sr-only">(current)</span></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="cursos.jsp">Cursos</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item dropdown">--%>
<%--                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"--%>
<%--                   aria-haspopup="true" aria-expanded="false">--%>
<%--                    Dropdown--%>
<%--                </a>--%>
<%--                <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                    <a class="dropdown-item" href="#">Action</a>--%>
<%--                    <a class="dropdown-item" href="#">Another action</a>--%>
<%--                    <div class="dropdown-divider"></div>--%>
<%--                    <a class="dropdown-item" href="#">Something else here</a>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link disabled" href="#">Disabled</a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <form action="https://www.google.com/search" method="GET" class="form-inline my-2 my-lg-0">--%>
<%--            <div class="input-group">--%>
<%--                <input class="form-control mr-sm-2" type="text" name="q" placeholder="Pesquisar..." aria-label="Search">--%>
<%--                <div class="input-group-append">--%>
<%--                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</nav>--%>
<style>
    .lista-video {
        margin: 20px;
    }

    .course-list {
        list-style: none;
        padding: 0;
    }

    .course-list li {
        margin-bottom: 20px;
        cursor: pointer;
        border: 1px solid #e0d7d7;
        padding: 10px;
        transition: background-color 0.3s ease;
    }

    .course-list li:hover {
        background-color: #0e0d0d;
    }

    .course-list li h2 {
        margin-top: 0;
        color: white;
    }

    .course-list li p {
        margin-bottom: 10px;
    }

    .course-list li .content {
        display: inline-list;
    }

    .course-list li .content.hidden {
        display: inline-flex;
    }

    .course-list li .content iframe {
        width: 300px;
        height: 200px;
        margin-bottom: 10px;
    }

</style>
<div class="lista-video">
    <ul class="course-list">
        <li id="course1" onclick="toggleContent('course1')">
            <h2>Curso de Desenvolvimento Web</h2>
            <p>Aprenda as principais tecnologias web, como HTML, CSS, JavaScript e frameworks populares.</p>
            <div class="content hidden">
                <iframe width="560" height="200" src="https://www.youtube.com/embed/KDab8z0K3aI"> allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    allowfullscreen></iframe>
                <iframe width="560" height="200" src="https://www.youtube.com/embed/yjmhSn0j8ac"> allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    allowfullscreen></iframe>
                <br>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/Ptbk2af68e8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                <iframe width="300" height="200" src="https://www.youtube.com/embed/01NubIe9Pao" title="🔴 APRENDA O QUE É HTML E CRIE SEU PRIMEIRO SITE - BÔNUS INCRÍVEL NO FINAL" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                 </div>
        </li>
        <li id="course2" onclick="toggleContent('course2')">
            <h2>Curso de Java</h2>
            <p>Explore técnicas de análise de dados, aprendizado de máquina e visualização de dados.</p>
            <div class="content hidden">
                <div id="videoContainer2">
                    <iframe width="560" height="200" src="https://www.youtube.com/embed/X8AnVQ-GqLU"></iframe>
                    <iframe width="560" height="200" src="https://www.youtube.com/embed/xap-zvN8pOc"></iframe>
                    <br>
                    <iframe width="560" height="200" src="https://www.youtube.com/embed/qQWizjnAtbs"></iframe>
                    <iframe width="560" height="200" src="https://www.youtube.com/embed/sRsAbGjBb4g"></iframe>
                </div>
            </div>
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
</div>
    <div class="roda">
        <div class="text-h3">
            <h3>CSloution &copy; 2023</h3>
        </div>
        <div class="logo-roda">
            <a href="index.html">
                <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90"
                     height="72"
                     class="d-inline-block align-text-top">
                </img>
            </a>
        </div>
    </div>
<%--    <style>--%>
<%--        /* Rodapé */--%>
<%--        .roda {--%>
<%--            margin-top: 10px;--%>
<%--            max-height: 100%;--%>
<%--            justify-content: center;--%>
<%--            align-content: center;--%>
<%--        }--%>

<%--        .text-h3 {--%>
<%--            display: flex;--%>
<%--            text-align: center;--%>
<%--            color: white;--%>
<%--            /*justify-content: center;*/--%>
<%--            /*align-content: center;*/--%>


<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            margin-top: 100%;--%>
<%--        }--%>

<%--        .logo-roda {--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            margin-top: 0.2%;--%>
<%--        }--%>
<%--    </style>--%>
    <script>
        function toggleContent(elementId) {
            var listItem = document.getElementById(elementId);
            var content = listItem.querySelector(".content");

            if (content.classList.contains("hidden")) {
                content.classList.remove("hidden");
            } else {
                content.classList.add("hidden");
            }
        }
    </script>
</body>
</html>

