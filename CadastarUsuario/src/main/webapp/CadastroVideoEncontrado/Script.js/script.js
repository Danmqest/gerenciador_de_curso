/*
// Código JavaScript
var nome = prompt("Qual é o seu nome?");*/

const botonMenu = document.getElementById("boton-menu");
const menuLateral = document.getElementById("menu-lateral");

botonMenu.addEventListener("click", () => {
  if (menuLateral.style.right === "-200px") {
    menuLateral.style.right = "0";
  } else {
    menuLateral.style.right = "-200px";
  }
});
/*
conexção combanco de dados via H2 console 
/*
spring.datasource.driver-class-name=org.h2.Driver
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.username=sa
spring.datasource.password=password
spring.h2.console.enabled=true
spring.h2.console.path=/h2-console localhost:8080/console}*/