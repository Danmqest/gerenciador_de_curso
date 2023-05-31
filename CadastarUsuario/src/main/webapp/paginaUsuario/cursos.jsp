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
    </div>
</header>


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

    p {
        color: white;
    }
</style>
<div class="lista-video">
    <ul class="course-list">
        <li id="course1" onclick="toggleContent('course1')">
            <h2>Curso de Desenvolvimento Web</h2>
            <img src="http://localhost:8080/CursoStore/img/imgC/DesWeb.png" alt="logo da Curso Store"
                 width="100" height="70"
                 class="d-inline-block align-text-top">

            <p>Aprenda as principais tecnologias web, como HTML, CSS, JavaScript e frameworks populares.</p>
            <div class="content hidden">
                <iframe width="560" height="200" src="https://www.youtube.com/embed/KDab8z0K3aI"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
                <iframe width="560" height="200" src="https://www.youtube.com/embed/yjmhSn0j8ac"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
                <br>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/Ptbk2af68e8"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
                <iframe width="300" height="200" src="https://www.youtube.com/embed/01NubIe9Pao"
                        title="🔴 APRENDA O QUE É HTML E CRIE SEU PRIMEIRO SITE - BÔNUS INCRÍVEL NO FINAL"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
            </div>
        </li>
        <li id="course2" onclick="toggleContent('course2')">
            <h2>Curso de Java</h2>
            <img src="http://localhost:8080/CursoStore/img/imgC/java4k.png" alt="logo da Curso Store"
                 width="100" height="70"
                 class="d-inline-block align-text-top">

            <p>Explore técnicas de análise de dados, aprendizado de máquina e visualização de dados.</p>
            <div class="content hidden">
                <iframe width="250" height="200" src="https://www.youtube.com/embed/LnORjqZUMIQ"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/ddhH97IPrFY"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/CMHU5buXvNw"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/BTNp4P12DIs"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/xQEauKE4NTw"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/mu2ti43cgwc"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/3rZNefsMmKs"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/dhGPGv7XCM8"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/Ebvl0BlnD-U"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/NoEoOaTSFMo"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/74QEhBpzixs"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/KUUrrIX6wGo"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/ELBqT_rueAQ"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
            </div>
        </li>
        <li id="course3" onclick="toggleContent('course3')">
            <h2>Curso de Segurança da Informação</h2>
            <img src="http://localhost:8080/CursoStore/img/imgC/SegInfor.png" alt="logo da Curso Store"
                 width="90" height="72"
                 class="d-inline-block align-text-top">

            <p>Aprenda a proteger sistemas e dados contra ameaças cibernéticas.</p>
            <div class="content hidden">
                <iframe width="300" height="200" src="https://www.youtube.com/embed/KvPtIl-Gz2E"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="300" height="200" src="https://www.youtube.com/embed/YjjTteeZbUM"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/vrUFULAjy9A"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/L7zUw31VqRc"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="25" height="200" src="https://www.youtube.com/embed/Y0beKLRf-fI"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/mJCbnSrlQhs"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/4aPVdQtYQTg"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/yMaPEZVAuqk"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
            </div>
        </li>

        <li id="course4" onclick="toggleContent('course4')">
            <h2>Curso de Desenvolvimento de Aplicativos Móveis</h2>
            <img src="http://localhost:8080/CursoStore/img/imgC/reactSpring.jpg" alt="logo da Curso Store"
                 width="100" height="70"
                 class="d-inline-block align-text-top">
            </img>

            <p>Crie aplicativos para dispositivos móveis usando frameworks como React Native ou Flutter.>
            </p>

            <div class="content hidden">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/HYr8WoUkoes"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/vUWRRnWQx_U"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/VdWh7HTTH9A"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/M5HyVZJocjM"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/12KKwA_Y_Ak"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/BeHXJeIgTxw"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/bujDrL6tyGY"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/HaUUYiltwa0"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/cAcPjO5eTY0"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="560" height="315" src="https://www.youtube.com/embed/yVaDgaV6AL8"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
            </div>
        </li>


        <li id="course5" onclick="toggleContent('course5')">
            <h2>Curso Git Hub</h2>
            <img src="http://localhost:8080/CursoStore/img/imgC/git.png" alt="logo da Curso Store"
                 width="90" height="72"
                 class="d-inline-block align-text-top">
            </img>
            <p>O Git é um sistema de controle de versão amplamente utilizado que permite
                gerenciar e controlar o histórico de alterações em um projeto.</p>
            <p> O GitHub por sua vez é uma plataforma baseada em nuvem que oferece recursos para hospedar,
                compartilhar e colaborar em repositórios Git..</p>
            <div class="content hidden">
                <iframe width="250" height="200" src="https://www.youtube.com/embed/MiZr3YtrVk0"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
                <iframe width="250" height="200" src="https://www.youtube.com/embed/Q9G_xCI7fq0"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
                <iframe width="250" height="200" src="https://www.youtube.com/embed/Q9G_xCI7fq0"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
                <iframe width="250" height="200" src="https://www.youtube.com/embed/Ipuv7SYOxkA"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
                <iframe width="250" height="200" src="https://www.youtube.com/embed/r9LFSecJlFE"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
                <iframe width="250" height="200" src="https://www.youtube.com/embed/b3LSVup5AMc"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
                <iframe width="250" height="200" src="https://www.youtube.com/embed/nZwDype_1p8"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/HcAkUWNJxbQ"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/Cn4GZNIYIsI"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/4T9q32xqovY"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>

                <iframe width="250" height="200" src="https://www.youtube.com/embed/MiZr3YtrVk0"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen>
                </iframe>
            </div>
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

