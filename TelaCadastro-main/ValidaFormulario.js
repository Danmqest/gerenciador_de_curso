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
});

function setError(indice) {
  campos[indice].style.border = "2px solid red";
  spans[indice].style.display = "block";
}

function removeError(indice) {
  campos[indice].style.border = "";
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
  }
  setError(1);
}

function validateMainPassword() {
  if (campos[2].value.length < 8) {
    setError(2);
  } else {
    removeError(2);
  }
}
function comparePassword() {
  if (campos[2].value != campos[3].value && campos[3].value.length <= 8) {
    setError(3);
  } else {
    removeError(3);
  }
}
