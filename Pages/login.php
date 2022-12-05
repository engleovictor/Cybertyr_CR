
<!DOCTYPE html>
<html>
    <head>
       
       
        <title>login</title>
        <meta charset="utf-8">
        <link rel="reset" href="reset.css">
        <link rel="shortcut icon" href="cybertyr.png">
        <link rel="stylesheet" href="login.css"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, max-scale=1.0">
    </head>

    <body>
       
        <form class="login" >
            <image class="logo_imagem" src="logo.png"/>
            <h1 class="login_txt">LOGIN</h1>
            <input id="usuario" class="usuario" type="text" name="usuario" placeholder="E-mail ou usuário" autocomplete="off">
            <input id="senha" class="senha"  type="password" name="senha" placeholder="Senha" >
            <button  onclick="entrar()" class="entrar" ><a>ENTRAR</a></button>
            <a href="cadastro.html" class="cadastrar">Não tem conta? clique para se cadastrar</a>
        </form>
        

          
            <?php
    echo '<script type="text/JavaScript">
            
    function entrar(){
        let usuLogado=document.querySelector(\'#usuLogado\')
        let listaUser=[]
    
        let userValid={
            user:\'\',
            senha:\'\',
        }
        listaUser=JSON.parse(localStorage.getItem(\'listaUser\'))
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
            alert(\'Bem-vindo!\')
            usuLogado.innerHTML=\'teste\' 
            
        }if(usuario.value==\'instrutor\'&&senha.value==\'admin123\'){
            window.location.href="instrutor.php"
            alert(\'Bem-vindo!\')
        }else{
            alert(\'Usuário ou senha inválidos\')
        }
    }
       
            </script>'
?>
    </body>
</html>