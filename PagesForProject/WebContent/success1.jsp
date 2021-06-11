<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String course=request.getParameter("course");
String subject=request.getParameter("subject");
String Rollnumber=request.getParameter("Rollnumber");
String classTeacher=request.getParameter("classTeacher");
String firstname=request.getParameter("firstname");
String Lastname=request.getParameter("lastname");
String gender=request.getParameter("gender");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO student1 values('"+course+"','"+subject+"','"+Rollnumber+"','"+classTeacher+"','"+firstname+"','"+Lastname+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e){
	out.println(e);
}
%>