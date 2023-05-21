<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete</title>
</head>
<body>


          <c:forEach var="username" items="${username}">
            <div class="modal-footer flex-column border-top-0">
                <form action="/delete-user" method="post">
                  <input type="hidden" name="id" value="${username.id}">
                  <button type="submit"
                  class="btn btn-lg btn-primary w-100 mx-0 mb-2">Deletar</button>
                </form>
             </div>
          </c:forEach>

</body>
</html>