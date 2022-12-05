
function desafio1b (){
    var listaIp=['192.168.1.15','192.168.1.42','192.168.1.102','192.168.1.147','192.168.1.203']
    var inputIp=[i1.value,i2.value,i3.value,i4.value,i5.value]
    valid=1


    for (let i = 0; i < 5; i++) {
           if(listaIp[i]!=inputIp[i]){
            valid=0
           }
    }
   
    if(valid==1){

        // let listaIp=['192.168.1.42','192.168.1.203','192.168.1.147','192.168.1.102','192.168.1.15']

        // let ipValid={
        //     ip:'',
        // }
        // listaIp.forEach((item)=>{
        //     if(i1.value==item.userCad && senha.value==item.senhaCad)
        //     userValid={
        //         nome: item.nomeCad,
        //         user: item.userCad,
        //         senha: item.senhaCad
        //     }
        //     console.log(userValid)
        // })




    window.location.href="desafio1c.html"
    alert('Resposta correta!')
    }else{
        
    alert('Resposta incorreta')
    }
    // 203
    // 147
    // 102
    // 42
    // 15

    // 42

    // 3

    // 15:5037
    //TCP/IP

    //virus_deadbeaf1337

}
function desafio2(){
    if(pingando.value=='192.168.1.42'){
        window.location.href="Desafio3.html"
        alert('Resposta correta!')
        }else{
            
        alert('Resposta incorreta')
        }
}
function numPing(){
    if(numeroPing.value==3){
        window.location.href="Desafio4.html"
        alert('Resposta correta!')
        }else{
            
        alert('Resposta incorreta')
        }
}
function porta(){
    if(portaAlta.value=='192.168.1.42:5037'){
        window.location.href="Desafio5.html"
        alert('Resposta correta!')
        }else{
            
        alert('Resposta incorreta')
        }
}
function serv(){
    if(servico.value=='TCP/IP'){
        window.location.href="Desafio6.html"
        alert('Resposta correta!')
        }else{
            
        alert('Resposta incorreta')
        }
}
function virus(){
    if(pastaVirus.value=='virus_deadbeaf1337'){
        window.location.href="homefinal.html"
        alert('Resposta correta!')
        }else{
            
        alert('Resposta incorreta')
        }
}