// https://www.digitalocean.com/community/tutorials/how-to-add-javascript-to-html

function comprobar() {
    var email = document.getElementById('email').value; 
    var termino = document.getElementById('termino').checked;

    var restriccion = /^([a-zA-Z0-9_.-]{2,})+@(([a-zA-Z0-9-]{3,})+.)+([a-zA-Z0-9]{3,})+$/;

    if (!restriccion.test(email)) {
        alert('Introduzca correctamente el email');
        return false;
    }
     if(termino == false){
    	alert('Acepte los terminos y condiciones para continuar');
    }
    else{
    	alert('Gracias por formar parte de nuestra Comunidad, (Se ha utilizado el metodo GET(), como se observa en la barra de busqueda)');
    }
    
	    
	
    

    return true;
}