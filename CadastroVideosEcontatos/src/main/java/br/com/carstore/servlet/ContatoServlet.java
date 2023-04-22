package br.com.carstore.servlet;


import br.com.carstore.servlet.dao.CarDao;
import br.com.carstore.servlet.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ContatoServlet")
public class ContatoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String mensagem = request.getParameter("mensagem");
        String VideoId = request.getParameter("VideoId");
        String titulo = request.getParameter("titulo");
        String id = request.getParameter("id");


        Car car;
        car = new Car(nome, email, mensagem, email, VideoId,  email);

        CarDao dao = new CarDao();

        dao.createCar(car);

        System.out.println("success in insert car");

        response.sendRedirect("contato.html");

    }


}

