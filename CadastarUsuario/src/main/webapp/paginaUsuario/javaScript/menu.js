// JavaScript UTF-8 encoding declaration

var menuItem = document.querySelectorAll('.item-menu-lateral')

function selectLink(){
    menuItem.forEach((item)=>
        item.classList.remove('ativo')
    )
    this.classList.add('ativo')
}

menuItem.forEach((item)=>
    item.addEventListener('click', selectLink)
)

var btnExp = document.querySelector('#btn-exp')
var menuLateral = document.querySelector('.menu-lateral')

btnExp.addEventListener('click', function(){
    menuLateral.classList.toggle('expandir')
})