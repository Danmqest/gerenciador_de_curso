package br.com.cadastro.servlet;

import br.com.cadastro.dao.CadastroDao;
import br.com.cadastro.model.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/find-User")
public class ListUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        if (null == req.getSession().getAttribute("username")) {

            req.setAttribute("message", "Credenciais invalidas!");

            req.getRequestDispatcher("login.jsp").forward(req, resp);

        } else {
            List<User> user = new CadastroDao().findUser();

            req.setAttribute("username", user);

            req.getRequestDispatcher("paginaUsuario/usuarioPerfil.jsp").forward(req, resp);
        }
    }
}