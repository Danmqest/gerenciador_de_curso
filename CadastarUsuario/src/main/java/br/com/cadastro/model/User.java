package br.com.cadastro.model;

public class User {

    private String name;
    private String password;

    public User(String name){
        this.name = name;

    }
    public User(String password, String name) {
        this.password = password;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }


}
