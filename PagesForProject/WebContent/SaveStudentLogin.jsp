<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String Username=request.getParameter("username");
String Password=request.getParameter("password");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO studentlogin values('"+Username+"','"+Password+"')");
	
	response.sendRedirect("studentHome.jsp");
	out.println("save successfully");
}
catch(Exception e){
	out.println(e);
}

%>