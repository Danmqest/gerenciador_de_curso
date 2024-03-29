<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="http://localhost:8080/paginaUsuario/css/index.css" charset="UTF-8">

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

                <li><a href="#">Cursos </a></li>
                <li><a href="http://localhost:8080/paginaUsuario/sobre.jsp" target="_blank">Sobre </a></li>
            </ul>
        </div>
            <c:if test="${sessionScope.username != null}">
               <span>${sessionScope.username}</span>
            </c:if>


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

            <li class="item-menu-lateral">
                <a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">
                    <span class="icon-menu-lateral"><i class="bi bi-journal"></i></span>
                    <span class="txt-link">Cursos</span>

                </a>
            </li>
            <li class="item-menu-lateral">
                <a href="/update-user?username=${sessionScope.username}">
                    <span class="icon-menu-lateral"><i class="bi bi-pencil-square fa-fw me-2"></i></span>
                    <span class="txt-link"> Dados pessoais</span>
                </a>
            </li>

            <li class="item-menu-lateral ativo">
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

    <div id="info">
        <c:if test="${sessionScope.username == null}">
            <h1>Faça o login novamente para acessar essa pagina para deletar</h1>
        </c:if>
    </div>

   <c:if test="${sessionScope.username != null}">
        <div id="page-delete">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>
                            <form action="/delete-user" method="post" onsubmit="return confirmDelete();">
                                <input type="hidden" id="id" name="id" value="${user.id}">
                                <input type="hidden" id="username" name="username" value="${user.username}">
                                <button type="submit" class="delete-button">Delete</button>
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
  </c:if>

  <div class="rodape">
     <div class="text-h3">
        <h3>CScursos &copy; 2023</h3>
     </div>
       <div class="logo-rodape">
          <a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">
            <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90" height="72"
            class="d-inline-block align-text-top">
            </img>
          </a>
       </div>
  </div>

    <script src="http://localhost:8080/paginaUsuario/javaScript/menu.js"></script>

</body>

</html>