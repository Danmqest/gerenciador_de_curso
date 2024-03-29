package br.com.cadastro.dao;
import br.com.cadastro.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CadastroDao {

    public void createUser(User user){
        String SQL = "INSERT INTO USUARIO (NAME,SENHA) VALUES (?,?)";
        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test","sa","sa");
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,user.getPassword());

            preparedStatement.execute();
            connection.close();
            System.out.println("sucess in connection");
        }catch (Exception e){
            System.out.println("fail in connection");
        }
    }

    public User selectByUsername(String id) {

        String SQL = "SELECT * FROM USUARIO WHERE NAME = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                String name = resultSet.getString("name");
                String password = resultSet.getString("senha");
                String userId = resultSet.getString("id");


                return new User(userId, name, password);
            }

            System.out.println("success on delete USUARIO with id: " + id);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }


        return null;

    }

    public List<User> findUser() {

        String SQL = "SELECT * FROM USUARIO";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<User> users = new ArrayList<>();

            while (resultSet.next()) {

                String name = resultSet.getString("nome");
                String password = resultSet.getString("senha");
                String id = resultSet.getString("id");


                User user = new User(id,name,password);

                users.add(user);

            }

            System.out.println("success in select * USUARIO");

            connection.close();

            return users;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }
    public void deleteUserById(String userId) {

        String SQL = "DELETE USUARIO WHERE ID = ?";
        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, userId);
            preparedStatement.execute();

            System.out.println("success on delete USUARIO with id: " + userId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }
    public void updateUser(User user) {
        String SQL = "UPDATE USUARIO SET NAME = ?, SENHA = ? WHERE ID = ?";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getId());
            preparedStatement.executeUpdate();

            System.out.println("success in update USUARIO");

            connection.close();

        } catch (Exception e) {
            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }
    }

}
