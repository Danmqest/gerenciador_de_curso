package br.com.cursostore.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-curso")
public class CreateCursoServlet extends HttpServlet {

    @Override
    protected void doPost(@org.jetbrains.annotations.NotNull HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        String cursoName = request.getParameter("curso-name");

        System.out.println(cursoName);
        request.getRequestDispatcher("inicio.html").forward(request, response);

    }

}
