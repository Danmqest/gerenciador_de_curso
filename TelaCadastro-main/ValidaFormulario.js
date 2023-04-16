const form = document.getElementById("form");
const campos = document.querySelectorAll(".required");
const spans = document.querySelectorAll(".span-required");
const email =
  /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

form.addEventListener("submit", (Event) => {
  Event.preventDefault();
  nameValidate();
  emailRegex();
  validateMainPassword();
  comparePassword();
  form.reset();
});

function setError(indice) {
  campos[indice].style.border = "2px solid  #9e082d";
  spans[indice].style.display = "block";
}

function removeError(indice) {
  campos[indice].style.border = "2px solid green";
  spans[indice].style.display = "none";
}

function nameValidate() {
  if (campos[0].value.length < 3) {
    setError(0);
  } else {
    removeError(0);
  }
}

function emailRegex() {
  if (email.test(campos[1].value)) {
    removeError(1);
  }else{ 
  setError(1);
  }
}

function validateMainPassword() {
  if (campos[2].value.length < 8) {
    setError(2);
  } else {
    removeError(2);
  }
}
function comparePassword() {
  if (campos[2].value === campos[3].value && campos[3].value.length >= 8) {
    removeError(3);
  } else {
    setError(3);
  }
}

// function validarSenha(senha) {
//   // A senha deve conter pelo menos 8 caracteres, uma letra maiúscula, uma minúscula e um número
//   const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
//   return regex.test(senha);
// }

// // Exemplo de uso
// console.log(validarSenha("Senha123")); // true
// console.log(validarSenha("senha")); // false
// console.log(validarSenha("Senha")); // false
// console.log(validarSenha("Senha123!")); // false

