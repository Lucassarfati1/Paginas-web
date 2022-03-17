<html>
<body>
<h1>
Usuarios Registrados</h1>
<%@ page import= "java.sql.*" %>
<%
	String nombre=request.getParameter("nombre");

	String usuario=request.getParameter("username");

	String contrasena=request.getParameter("contrasena");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
		java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3307/appJava","root","");
	
	
	java.sql.Statement miEstatuto=miConexion.createStatement();
	

	
	String instruccionsql ="INSERT INTO usuarios (nombre, usuario, contrasena) values ('"+nombre+"','"+usuario+"','"+contrasena+"');";
	
	miEstatuto.executeUpdate(instruccionsql);
	
	out.println("Funciona todo CAPo");
	}catch(Exception e){
		out.println("ha habido un error");
	}
	
	
%>


</body>
</html>
