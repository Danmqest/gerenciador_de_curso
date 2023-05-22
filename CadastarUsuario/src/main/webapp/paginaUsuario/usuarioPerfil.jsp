<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Área do Aluno</title>
    <link href="img/cs%20logo.png" rel="icon">
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
                <a href="index.html">
                    <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90" height="72"
                        class="d-inline-block align-text-top">
                </a>
            </div>
            <div class="logo-texto"></div>
        </div>

        <div class="menu">
            <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">

                <li><a href="#">Cursos </a></li>
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
                <a href="#">
                    <span class="icon-menu-lateral"><i class="bi bi-journal"></i></span>
                    <span class="txt-link">Cursos</span>

                </a>
            </li>
            <li class="item-menu-lateral">
                <a href="http://localhost:8080/paginaUsuario/configPessoal.jsp">
                    <span class="icon-menu-lateral"><i class="bi bi-pencil-square fa-fw me-2"></i></span>
                    <span class="txt-link"> Configurações pessoais</span>

                </a>
            </li>
            <li class="item-menu-lateral">
                <a href="http://localhost:8080/paginaUsuario/deletaConta.jsp">
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

                  <!-- curso de java -->
                <a href="http://localhost:8080/paginaUsuario/pages/java.html" target="_blank">
                    <figure>
                        <img src="https://www.eadplus.com.br/wp-content//uploads/2015/08/wjava.jpg" alt="Curso java">
                        <figcaption>Curso de java</figcaption>
                    </figure>
                  </a>
                  <!-- Curso MySql -->
                  <a href="pages/mySql.html">
                    <figure>
                    <img src="http://localhost:8080/paginaUsuario/img/imgC/mysql-logo.png" alt="Curso MySql">
                    <figcaption>curso de MySql</figcaption>
                </figure>
                  </a>

                <!-- curso de python -->
                  <a href="pages/python.html">
                    <figure>
                    <img src="http://localhost:8080/paginaUsuario/img/imgC/pythonWallpapper.png" alt="Curso Python">
                    <figcaption>curso de python</figcaption>
                </figure>

              </a>
              <!-- FrontEnd Basico -->
                  <a href="pages/frontEnd.html">
                    <figure>
                    <img src="https://blog.dankicode.com/wp-content/uploads/2018/05/como-se-tornar-um-desenvolvedor-front-end.png" alt="Curso de frontEnd Basico">
                    <figcaption>curso de frontEnd Basico</figcaption>
                </figure>

                  </a>
                  <!-- Curso de UX E UI -->
                  <a href="pages/UI_UX.html">
                    <figure>
                    <img src="https://img.freepik.com/free-vector/gradient-ui-ux-background_23-2149052117.jpg" alt="Curso de UX-UI">
                    <figcaption>curso de UX-UI</figcaption>
                </figure>
                  </a>

                  <!-- curso de ReactNative -->
                  <a href="pages/ReactNative.html">
                    <figure>
                    <img src="https://cdn.wallpapersafari.com/66/57/M0rP6h.jpg" alt="Curso de ReactNative">
                    <figcaption>curso de ReactNative</figcaption>
                </figure>
                  </a>
                </div>
                  <!-- deve fechar a div container do video -->

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
              </div>


    <script src="http://localhost:8080/paginaUsuario/javaScript/menu.js"></script>

</body>

</html>