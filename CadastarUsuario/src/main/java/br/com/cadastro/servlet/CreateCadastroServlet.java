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

            String Name = req.getParameter("nome");
            String password = req.getParameter("senha");
            User user = new User();
            //user.setName(password);
            user.setPassword(password);
            user.setName(Name);
            new CadastroDao().createUser(user);

            System.out.println(Name);
            System.out.println(password);

        req.getRequestDispatcher("index.html").forward(req, resp);
    }
}
