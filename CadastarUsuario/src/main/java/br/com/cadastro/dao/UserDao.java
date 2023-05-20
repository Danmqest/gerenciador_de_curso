package br.com.cadastro.dao;

import br.com.cadastro.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    public boolean verifyCredentials(User user) {

        String SQL = "SELECT * FROM USUARIO WHERE NAME = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
            System.out.println("success in database connection");
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, user.getUsername());
            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("success in select username");

            while (resultSet.next()) {
                String password = resultSet.getString("SENHA");
                if (password.equals(user.getPassword())) {
                    return true;
                }

            }
            connection.close();
            return false;

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            return false;
        }

    }
}
