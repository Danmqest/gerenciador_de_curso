package br.com.cadastro.model;

public class User {

    private String username;
    private String password;
    private  String id;


    public User(String username) {
        this.username = username;

    }

    public User(String id, String username, String password) {
        this.id = id;
        this.password = password;
        this.username = username;
    }

    public User(String username, String password){
        this.password = password;
        this.username = username;
    }

    public String getUsername() {
        return username;
    }
    public String getPassword() {
        return password;
    }
    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.username = name;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public void setId(String id) {
        this.id = id;
    }
}
