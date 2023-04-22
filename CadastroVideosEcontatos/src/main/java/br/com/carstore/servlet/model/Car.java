package br.com.carstore.servlet.model;

public class Car {

    private String id;
    private String name;
    private String email;
    private String mensagem;
    private String data_envio;
    private String VideoId;
    private String Título;

    public Car(String id, String name, String email, String mensagem, String data_envio, String videoId, String título) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mensagem = mensagem;
        this.data_envio = data_envio;
        VideoId = videoId;
        Título = título;
    }

    public Car(String id) {
    }

    public Car(String nome, String email, String mensagem, String email1, String videoId, String email2) {
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getMensagem() {
        return mensagem;
    }

    public String getData_envio() {
        return data_envio;
    }

    public String getVideoId() {
        return VideoId;
    }

    public String getTítulo() {
        return Título;
    }
}

