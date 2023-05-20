package br.com.cadastro.servlet;

import br.com.cadastro.dao.CadastroDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-user")

public class DeleteUserServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        String userId = req.getParameter("id");

        new CadastroDao().deleteUserById(userId);;

        resp.sendRedirect("/find-User");

    }
}
