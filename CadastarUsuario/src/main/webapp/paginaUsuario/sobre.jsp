<!DOCTYPE html>
<html lang="pt-br">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="http://localhost:8080/paginaUsuario/img/cs%20logo.png" rel="icon">
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
    <title>Sobre</title>
</head>
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
            <li><a href="http://localhost:8080/paginaUsuario/cursos.jsp">Cursos </a></li>
<%--            <li><a href="http://localhost:8080/paginaUsuario/sobre.jsp" target="_blank">Sobre </a></li>--%>
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
<div class="containe-pai">
    <header>
        <div class="collapse navbar-collapse navbar-dark" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="usuarioPerfil.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
            </ul>

        </div>
    </nav>

</header>
<div class="h1-text">
    <h1 style="color: white">Cursos Store - Cursos Online</h1>
</div>
<div class="container">

    <p style="color: white">Você está procurando aprimorar suas habilidades e se destacar no mercado de trabalho? Então
        os cursos online da CSloution são perfeitos para você! Com uma ampla variedade de opções, desde programação e
        design até marketing digital e gestão de projetos, nossos cursos são ministrados por profissionais altamente
        qualificados e com vasta experiência em suas áreas.</p>
    <p style="color: white">Ao comprar um curso da CSloution, você terá acesso a conteúdos exclusivos e atualizados,
        além de recursos interativos que facilitam o aprendizado e ajudam a fixar o conhecimento. E o melhor de tudo:
        você pode estudar no seu próprio ritmo, sem precisar se preocupar com horários fixos ou deslocamentos.</p>
    <p style="color: white">Não perca mais tempo e invista no seu futuro profissional com a CSloution. Nossos cursos
        online são a maneira mais prática e eficiente de adquirir novas habilidades e conquistar novas oportunidades no
        mercado de trabalho. Compre agora e comece a transformar sua carreira!</p>
</div>

<body-item>
    <div class="container-caixa">
        <div class="caixa">
            <img alt="description of the image" height="100%" src="img/LogoCursoStore.gif"
                 width="100%"></img>
        </div>
    </div>
</body-item>
<!--codigo da caixa-->


<!-- Add your site or application content here -->

<script src="js/vendor/modernizr-3.11.2.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
<script src="Script.js/script.js"></script>
<!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
<script>
    window.ga = function () {
        ga.q.push(arguments)
    };
    ga.q = [];
    ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto');
    ga('set', 'anonymizeIp', true);
    ga('set', 'transport', 'beacon');
    ga('send', 'pageview')
</script>
    <script async src="https://www.google-analytics.com/analytics.js"></script>


    <div class="rodape-sobre">
        <div class="text-h3"><a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">
            <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90"
                 height="72"
                 class="d-inline-block align-text-top">
            <h3>CScursos &copy; 2023</h3>
            </img>
        </a>
        </div>
        <%--        <div class="logo-rodape">--%>
        <%--            <a href="http://localhost:8080/paginaUsuario/usuarioPerfil.jsp">--%>
        <%--                <img src="http://localhost:8080/paginaUsuario/img/cs logo.png" alt="logo da Curso Store" width="90" height="72"--%>
        <%--                     class="d-inline-block align-text-top">--%>
        <%--                </img>--%>
        <%--            </a>--%>
        <%--        </div>--%>
    </div>
</div>
</div>

</body>
</html>
