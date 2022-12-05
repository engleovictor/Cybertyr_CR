
// function entrar(){
//     if(usuario.value=='adfm'&&senha.value=='seuvarado'){
//         window.location.href="homelogado.html"
//         alert('Usuário logado')
//     }else{
//         alert('Usuário ou senha inválidos')
//     }
// }

function login(){
  
    // console.log(usuLogado.value)
    // setTimeout(5000)
}
function entrar(){
    let usuLogado=document.querySelector('#usuLogado')
    let listaUser=[]

    let userValid={
        user:'',
        senha:'',
    }
    listaUser=JSON.parse(localStorage.getItem('listaUser'))
    console.log(listaUser)
    listaUser.forEach((item)=>{
        if(usuario.value==item.userCad && senha.value==item.senhaCad)
        userValid={
            user: item.userCad,
            senha: item.senhaCad
        }
        console.log(userValid)
    })

    if(usuario.value==userValid.user && usuario.value.length>0&& senha.value == userValid.senha){
        // console.log(usuLogado.value)
        window.location.href="homelogado.html"
        alert('Bem-vindo!')
        usuLogado.innerHTML='teste' 
        
    }if(usuario.value=='instrutor'&&senha.value=='admin123'){
        window.location.href="instrutor.html"
        alert('Bem-vindo!')
    }else{
        alert('Usuário ou senha inválidos')
    }
}
