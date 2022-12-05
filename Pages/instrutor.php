<!DOCTYPE html>
<html>

<head>
    <title>saladeredes1</title>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="Images/LOGO.png">
    <link rel="stylesheet" href="styles/saladeredes1.css"> 
    <!-- Start of Tawk.to Script-->
<!-- <script type="text/javascript">
  var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
  (function(){
  var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
  s1.async=true;
  s1.src='https://embed.tawk.to/635b25adb0d6371309cbf364/1gge0mbrd';
  s1.charset='UTF-8';
  s1.setAttribute('crossorigin','*');
  s0.parentNode.insertBefore(s1,s0);
  })();
  </script> -->
  <!--End of Tawk.to Script -->
</head>

<body>



<!-- BARRA DE NAVEGAÇÃO -->
<main class="isac">    
  <div class="barra">
    <nav class="barranav">
      <ul>
          <li><a class="sair" href="./homelogado.html">VOLTAR</a></li>
      </ul>
      <img class="logopequena" src="Images/logo com fundo.png" alt="Cybertyr">       
      <ul>
          <li>instrutor</li>
      </ul>
    </nav>
  </div>
  
<!-- TEXTOS + BOTÃO ENTRE NA REDE -->
  <div class="principal">
    <div class="firstpage">
        
        <div> <!--botão-->
            <div class="textosfirstpage">
                <p>Ataque http:</p>
                <button  onclick="location.href='run2.php'" class="botao">ENVIAR SCRIPT 1</button class="botao">
            </div>
            <div class="textosfirstpage">
                <p>Ataque ping:</p>
                <button  onclick="location.href='run.php'" class="botao">ENVIAR SCRIPT 2</button class="botao">
            </div>

        </div>
      </div>
            
  </div>

<!-- BOTÃO PARA O CHAT -->
  <!-- <div class="chat">
    <button class="botaodochat">CHAT</button>
  </div> -->

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
            window.location.href="instrutor.html"
            alert(\'Bem-vindo!\')
        }else{
            alert(\'Usuário ou senha inválidos\')
        }
    }
       
            </script>'
?>
</main>
</body>
</html>