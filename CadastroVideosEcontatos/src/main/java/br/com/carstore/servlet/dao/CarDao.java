package br.com.carstore.servlet.dao;

import br.com.carstore.servlet.model.Car;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CarDao {

  public void createCar(Car car) {
    String SQL =
      "INSERT INTO CAR (id, name, email, mensagem, data_envio, video_id) VALUES (?, ?, ?, ?, ?, ?)";

    try {
      Connection connection = DriverManager.getConnection("jdbc:h2:~/test","sa","sa" );
      
      System.out.println("success in database connection");

      PreparedStatement preparedStatement = connection.prepareStatement(SQL);
      preparedStatement.setString(1, car.getId());
      preparedStatement.setString(2, car.getName());
      preparedStatement.setString(3, car.getEmail());
      preparedStatement.setString(4, car.getMensagem());
      preparedStatement.setString(5, car.getData_envio());
      preparedStatement.setString(6, car.getVideoId());

      preparedStatement.execute();
      System.out.println("success in insert car");

      connection.close();
    } catch (Exception e) {
      System.out.println("fail in database connection");
    }
  }

  public List<Car> findAllCars() {
    String SQL = "SELECT * FROM CAR";

    try {
      Connection connection = DriverManager.getConnection(
        "jdbc:h2:~/test",
        "sa",
        "sa"
      );
      System.out.println("success in database connection");

      PreparedStatement preparedStatement = connection.prepareStatement(SQL);
      ResultSet resultSet = preparedStatement.executeQuery();
      List<Car> cars = new ArrayList<>();

      while (resultSet.next()) {
        String carId = resultSet.getString("id");
        String carName = resultSet.getString("name");
        String carEmail = resultSet.getString("email");
        String carMensagem = resultSet.getString("mensagem");
        String carDataEnvio = resultSet.getString("data_envio");
        String carVideoId = resultSet.getString("video_id");

        Car car = new Car(
          carId,
          carName,
          carEmail,
          carMensagem,
          carDataEnvio,
          carVideoId
        );
        cars.add(car);
      }

      System.out.println("success in select * car");
      connection.close();
      return cars;
    } catch (Exception e) {
      System.out.println("fail in database connection");
      return Collections.emptyList();
    }
  }

  public void deleteCarById(String carId) {
    String SQL = "DELETE FROM CAR WHERE ID = ?";

    try {
      Connection connection = DriverManager.getConnection("jdbc:h2:~/test","sa","sa" );

      System.out.println("success in database connection");

      PreparedStatement preparedStatement = connection.prepareStatement(SQL);
      preparedStatement.setString(1, carId);

      preparedStatement.execute();
      System.out.println("success on delete car with id: " + carId);

      connection.close();
    } catch (Exception e) {
      System.out.println("fail in database connection");
    }
  }
}
