
<jsp:include page="includes/cabecera.jsp" >
  <jsp:param name="pagina" value="Login" />
  <jsp:param name="title" value="Login" /> 
</jsp:include>

	
	<form action="login" method="post">
	
	
		<input type="text" name="nombre" placeholder="Tu Nombre">
		<br>
		<input type="password" name="pass" placeholder="Tu Contrase�a">
		<br>
		<input type="submit" value="Iniciar Sesi�n">
	
	</form>
	
	

<%@include file="includes/pie.jsp" %>	