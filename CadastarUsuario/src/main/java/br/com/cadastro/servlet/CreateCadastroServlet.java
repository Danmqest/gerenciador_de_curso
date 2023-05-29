package br.com.cadastro.servlet;

import br.com.cadastro.dao.CadastroDao;
import br.com.cadastro.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-user")

public class CreateCadastroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);

        String userId = req.getParameter("id");
        String name = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String confirmPassword = req.getParameter("confirmPassword");


        String redirectUrl = null; // Variável para armazenar o URL de redirecionamento

        if (userId.isBlank()) {
            // Validações para cadastro
            if (name.length() < 3) {
                redirectUrl = "http://localhost:8080/index.jsp?error=O nome deve ter mais de 3 caracteres";
            } else if (email != null && !email.isEmpty() && !email.matches("^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$")) {
                redirectUrl = "http://localhost:8080/index.jsp?error=O email é inválido";
            } else if (password.length() < 8) {
                redirectUrl = "http://localhost:8080/index.jsp?error=A senha deve ter no mínimo 8 caracteres";
            } else if (!password.equals(confirmPassword)) {
                redirectUrl = "http://localhost:8080/index.jsp?error=As senhas não conferem";
            } else {
                User user = new User(userId, name, password);
                CadastroDao register = new CadastroDao();
                register.createUser(user);
                redirectUrl = "http://localhost:8080/paginaUsuario/usuarioPerfil.jsp";
            }
        } else {
            // Validações para atualização de usuário
            if (name.length() < 3) {
                redirectUrl = "http://localhost:8080/paginaUsuario/dadosCadastrais.jsp?error=O nome deve ter mais de 3 caracteres";
            } else if (password.length() < 8) {
                redirectUrl = "http://localhost:8080/paginaUsuario/dadosCadastrais.jsp?error=A senha deve ter no mínimo 8 caracteres";
            } else if (!password.equals(confirmPassword)) {
                redirectUrl = "http://localhost:8080/paginaUsuario/dadosCadastrais.jsp?error=As senhas não conferem";
            } else {
                User user = new User(userId, name, password);
                CadastroDao register = new CadastroDao();
                register.updateUser(user);
                redirectUrl = "http://localhost:8080/telaLogin/Login.jsp";
            }
        }

        // Redirecionamento
        if (redirectUrl != null) {
            resp.sendRedirect(redirectUrl);
        }




    }
}

