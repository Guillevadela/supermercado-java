
<jsp:include page="includes/cabecera.jsp" >
  <jsp:param name="pagina" value="Login" />
  <jsp:param name="title" value="Login" /> 
</jsp:include>

	
	<form action="login" method="post" class="form-login" onsubmit="cifrar()">
	
	 	<div class="form-group">
			<input type="text" name="nombre" placeholder="Tu Nombre"  class="form-control">
		</div>
		
		<div class="form-group">
			<input type="password" id="pass" name="pass" placeholder="Tu Contrase�a"  class="form-control">
		</div>
		
		<div class="form-group">
			<select name="idioma" class="custom-select">		  
			  <option value="es">Castellano</option>
			  <option value="eu">Euskera</option>
			  <option value="en">Ingles</option>
			</select>
		</div>
		
		<input type="submit" value="Iniciar Sesi�n" class="btn btn-primary btn-block">
	
	</form>
	
	

<%@include file="includes/pie.jsp" %>	


<script>
	
	console.log('Estoy en el formulario');
	
	function cifrar() {
		
		console.log('cifrar y conseguir hash');
		
		//recupero la contrase�a del input a atves de su ID
		var contrasenia = document.getElementById('pass').value;
		
		//consigo el hash mediante la libreria incluida en el pie.jsp
		var hash = md5(contrasenia);
		
		
		//guardo en el inpput el codigo hash
		document.getElementById('pass').value = hash;		
		
		//enviar formulario
		return true; // si ponemos false no se envia el formulario
		
	}

</script>

