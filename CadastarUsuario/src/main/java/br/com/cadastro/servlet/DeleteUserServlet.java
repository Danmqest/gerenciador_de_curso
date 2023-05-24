package br.com.cadastro.servlet;

import br.com.cadastro.dao.CadastroDao;
import br.com.cadastro.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-user")

public class DeleteUserServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");

        User user = new CadastroDao().selectByUsername(username);

        req.setAttribute("user", user);
        req.getRequestDispatcher("paginaUsuario/dadosPessoais.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {

        String userId = req.getParameter("id");
        String username = req.getParameter("username");

        new CadastroDao().deleteUserById(userId);

        if (req.getSession().getAttribute("username").equals(username)) {

            resp.sendRedirect("/logout");

        } else {

            resp.sendRedirect("/find-User");

        }

    }

}
