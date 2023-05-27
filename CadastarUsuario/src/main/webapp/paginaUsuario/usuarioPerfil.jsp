<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Área do Aluno</title>
    <link href="http://localhost:8080/paginaUsuario/img/cs%20logo.png" rel="icon">
    <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/estiloTelaUsuario.css" charset="UTF-8">
    <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/bootstrap.css" charset="UTF-8">
    <link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/index.css" charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css" charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" charset="UTF-8">
</head>

<body>
    <header>
        <div class="container-logo">
            <div class="logo-imagem">
                <a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">
                    <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90" height="72"
                        class="d-inline-block align-text-top">
                </a>
            </div>
            <div class="logo-texto"></div>
        </div>

        <div class="menu">
            <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">

                <li><a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">Cursos </a></li>
                <li><a href="http://localhost:8080/paginaUsuario/sobre.jsp" target="_blank">Sobre </a></li>
            </ul>
        </div>
            <span> Olá ${sessionScope.username}!</span>


        <div class="search-box">
            <input class="search-text" type="search" placeholder="Pesquisar... ">
            <a class="search-btn" href="#">
                <img class="loupe" src="http://localhost:8080/paginaUsuario/img/lupa-arredondada.png" alt="lupa" width="25px" height="25px">
            </a>
        </div>
    </header>


    <nav class="menu-lateral">
        <div class="btn-expandir">
            <i class="bi bi-list" id="btn-exp"></i>
        </div>
        <ul>

            <li class="item-menu-lateral ativo">
                <a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">
                    <span class="icon-menu-lateral"><i class="bi bi-journal"></i></span>
                    <span class="txt-link">Cursos</span>

                </a>
            </li>
            <li class="item-menu-lateral">
                <a href="/update-user?username=${sessionScope.username}">
                <input type="hidden" id="id" name="id" value="${param.id}">
                    <span class="icon-menu-lateral"><i class="bi bi-pencil-square fa-fw me-2"></i></span>
                    <span class="txt-link" type="submit"> Dados pessoais</span>
                </a>
            </li>
            <li class="item-menu-lateral">
                <a href="/delete-user?username=${sessionScope.username}">
                    <input type="hidden" id="id" name="id" value="${param.id}">
                    <span class="icon-menu-lateral"><i class="bi bi-trash fa-fw me-2"></i></span>
                    <span class="txt-link" type="submit">Deletar conta</span>
                </a>
            </li>


            <li class="item-menu-lateral">
                <a href="/logout">
                    <span class="icon-menu-lateral"><i class="bi bi-box-arrow-right"></i></span>
                    <span class="txt-link"> Logout </span>
                </a>
            </li>
        </ul>
    </nav>
        <div id="videoContainer">
           <div class="card">
               <img src="http://localhost:8080/CursoStore/img/imgC/java.jpg" class="card-img-top" alt="imagem do java">
                   <div class="card-body">
                        <h5 class="card-title">Curso Java</h5>
                        <p class="card-text">Domine uma das linguagens mais populares para desenvolvimento back-end, e explore o poder da Orientação a Objetos, bem como as principais bibliotecas do mundo Java.</p>
                        <a href="http://localhost:8080/paginaUsuario/pages/java.html" class="btn btn-primary">Assita as aulas</a>
                    </div>
           </div>

          <div class="card">
              <img src="http://localhost:8080/CursoStore/img/imgC/mysql-logo.png" class="card-img-top" alt="imagem mysql">
                   <div class="card-body">
                        <h5 class="card-title">Curso MySQL</h5>
                        <p class="card-text">O Curso de MySQL é projetado para fornecer uma introdução abrangente ao sistema de gerenciamento de banco de dados MySQL.</p>
                        <a href="http://localhost:8080/paginaUsuario/pages/sql.html" class="btn btn-primary">Assita as aulas</a>
                   </div>
          </div>

            <div class="card">
                <img src="http://localhost:8080/CursoStore/img/imgC/pythonWallpapper.png" class="card-img-top" alt="imagem python">
                    <div class="card-body">
                       <h5 class="card-title">Curso Python</h5>
                        <p class="card-text">Desvende o poder do Python. Domine a programação. Crie o futuro.</p>
                        <a href="http://localhost:8080/paginaUsuario/pages/python.html" class="btn btn-primary">Quero Estudar</a>
                    </div>
            </div>

            <div class="card">
               <img src="http://localhost:8080/CursoStore/img/imgC/frontEnd Basico.png" class="card-img-top" alt="imagem logo html">
                   <div class="card-body">
                       <h5 class="card-title">Curso Font-End Basico</h5>
                        <p class="card-text">O Curso de Front-end Básico é projetado para fornecer uma introdução abrangente às tecnologias e conceitos fundamentais do desenvolvimento front-end.</p>
                        <a href="http://localhost:8080/paginaUsuario/pages/frontEnd.html" class="btn btn-primary">Assita as aulas</a>
                   </div>
            </div>

            <div class="card">
                <img src="http://localhost:8080/CursoStore/img/imgC/UI-UX.jpg" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">Curso UX - UI</h5>
                        <p class="card-text">O Curso de UX (User Experience) e UI (User Interface) Básico é projetado para fornecer uma introdução abrangente aos princípios e práticas do design de experiência do usuário e da interface do usuário.</p>
                        <a href="http://localhost:8080/paginaUsuario/pages/UX_UI.html" class="btn btn-primary">Assita as aulas</a>
                    </div>
            </div>

            <div class="card">
                <img src="http://localhost:8080/CursoStore/img/imgC/react.png" class="card-img-top" alt="">
                     <div class="card-body">
                          <h5 class="card-title">Curso React</h5>
                          <p class="card-text">Aprenda os primeiros passos do React Native e crie aplicativos para Android e iOS simultaneamente.</p>
                          <a href="http://localhost:8080/paginaUsuario/pages/ReactNative.html" class="btn btn-primary">Assita as aulas</a>
                     </div>
            </div>


        </div> <!-- deve fechar a div container do video -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </div>


    <script src="http://localhost:8080/paginaUsuario/javaScript/menu.js"></script>

</body>

</html>