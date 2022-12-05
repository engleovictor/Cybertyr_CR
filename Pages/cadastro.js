function cadastrar(){
    if(usuario.value.length>2 && senha.value.length>5 && confSenha.value==senha.value){
        // msgSucess.setAttribute('style','display:block')
        // msgSucess.innerHTML='<strong>Cadastrando...</strong>'
        let listaUser = JSON.parse(localStorage.getItem('listaUser')||'[]')
        listaUser.push(
        {
            userCad: usuario.value,
            senhaCad: senha.value,
            cont:0
        }
        )
        localStorage.setItem('listaUser',JSON.stringify(listaUser))
        alert('cadastrado')
        window.location.href='login.html'
    }else{
        // msgError.setAttribute('style','display:block')
        // msgError.innerHTML='<strong>Cadastrando...</strong>'
        alert('Preencha os campos corretamente:\n-O campo \'Usuário\' deve conter no mínimo 3 caracteres\n-A senha deve conter no mínimo 6 caracteres\n-Os campos \'Senha\' e \'Confirme sua senha\' devem corresponder')
    }
}