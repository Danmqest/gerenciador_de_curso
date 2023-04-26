package br.com.cadastro.model;

public class User {

    private String name;
    private String password;
    private  String id;



    public User(String name) {
        this.name = name;

    }

    public User(String id, String name, String password) {
        this.id = id;
        this.password = password;
        this.name = name;

    }



    public User(String name, String password){
        this.password = password;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }
    public String getId() {
        return id;
    }


}
