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
        List<User> user = new CadastroDao().findUser();

        req.setAttribute("user", user);

        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
    }
}
