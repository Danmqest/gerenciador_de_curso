package br.com.cadastro.servlet;

import br.com.cadastro.dao.UserDao;
import br.com.cadastro.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("login.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("name");
        String password = req.getParameter("password");

        User user = new User(username, password);

        boolean isValidUser = new UserDao().verifyCredentials(user);

        if (isValidUser) {
            req.getSession().setAttribute("username", username);
            req.getRequestDispatcher("CursoStore/inicio.html").forward(req, resp);
            req.getRequestDispatcher("find-User").forward(req, resp);
        } else {
            req.setAttribute("message", "Invalid credentials!");
            req.getRequestDispatcher("telaLogin/Login.jsp").forward(req, resp);

        }

    }
}
