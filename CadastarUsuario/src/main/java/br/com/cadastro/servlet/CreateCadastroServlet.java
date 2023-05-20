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

        String name = req.getParameter("username");
        String password = req.getParameter("password");
        String userId = req.getParameter("id");
        User user = new User(userId, name, password);

        CadastroDao register = new CadastroDao();
        //register.createUser(user);

        if (userId.isBlank()) {
            register.createUser(user);
        } else {
            register.updateCar(user);
        }


        System.out.println(name);
        System.out.println(password);

        //req.getRequestDispatcher("index.jsp").forward(req, resp);
        //resp.sendRedirect("find-User");
        req.getRequestDispatcher("http://localhost:8080/paginaUsuario/usuarioPerfil.jsp").forward(req, resp);

    }
}
