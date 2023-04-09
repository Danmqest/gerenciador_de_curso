package br.com.cadastro.dao;
import br.com.cadastro.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CadastroDao {

    public void createUser(User user){
        String SQL = "INSERT INTO USUARIO (NAME,SENHA) VALUES (?,?)";
        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test","sa","sa");
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getPassword());

            preparedStatement.execute();
            connection.close();
            System.out.println("sucess in connection");
        }catch (Exception e){
            System.out.println("fail in connection");
        }
    }
}
