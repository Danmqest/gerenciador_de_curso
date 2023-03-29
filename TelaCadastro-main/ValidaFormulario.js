//logica dos inputs
let select = document.getElementById("meu-select");
let input = document.getElementById("curso");
let input2 = document.getElementById("disciplina");

select.addEventListener("change", function() {

  let valorSelecionado = select.value;
  
  if (valorSelecionado === "aluno") {
    input2.disabled = true;
    input.disabled = false;
  }
  if(valorSelecionado === "professor"){
    input.disabled = true;
    input2.disabled = false;
  }
});


  
 


