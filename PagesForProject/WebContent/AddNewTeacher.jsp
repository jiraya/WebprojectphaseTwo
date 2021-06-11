<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String Id=request.getParameter("id");
String CourseName=request.getParameter("course");
String SubjectName=request.getParameter("subject");
String fullName=request.getParameter("name");
String Phonenumber =request.getParameter("phoneno");
String Email=request.getParameter("email");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO teacher values('"+Id+"','"+CourseName+"','"+SubjectName+"','"+fullName+"','"+Phonenumber+"','"+Email+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e){
	out.println(e);
}

%>