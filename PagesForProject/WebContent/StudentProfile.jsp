<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String StudentName=request.getParameter("StudentName");
String ClassName=request.getParameter("ClassName");
String RollNumber=request.getParameter("Rollnumber");
String ClassTeacherName=request.getParameter("ClassTeacherName");
String PhoneNumber=request.getParameter("PhoneNumber");
String Email=request.getParameter("Email");
String Username=request.getParameter("Username");
String Password=request.getParameter("Password");
String Gender=request.getParameter("Gender");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO studentprofile values('"+StudentName+"','"+ClassName+"','"+RollNumber+"','"+ClassTeacherName+"','"+PhoneNumber+"','"+Email+"','"+Username+"','"+Password+"','"+Gender+"')");
	response.sendRedirect("studentHome.jsp");
}
catch(Exception e){
	out.println(e);
}


%>