<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>StudentManagementSystem</title>
<body>
	<img src="home/logo.png" align="left" width="200" height="200">
	<center>
		<h2>Student Dashboard</h2>
	</center>
	
	<div class="w3-container">
		<div class="w3-bar w3-black">
			<button class="w3-bar-item w3-button tablink"
			onclick="openCity(event,'Tokyo3')">Student Profile</button>

			
			<button class="w3-bar-item w3-button tablink"
			onclick="openCity(event,'Tokyo1')">All Student Result</button>

			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'Tokyo2')">Registered Teacher</button>
				
			<a href="Logout.html" class="w3-bar-item w3-button tablink">Logout</a>
		</div>

		<div id="London" class="w3-container w3-border city">
			<br>
			<link
				href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
				rel="stylesheet" id="bootstrap-css">
			<script
				src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
			<script
				src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<!------ Include the above in your HEAD tag ---------->

			<!doctype html>
			<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">



<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</div>


<div id="Tokyo3" class="w3-container w3-border city"
	style="display: none">
	<section>
		<!--for demo wrap-->
		<div class="tbl-header">
		
			<table cellpadding="0" cellspacing="0" border="0">
				<thead>
					<tr>
						<th>Student Name</th>
						<th>Class Name</th>
						<th>Roll Number</th>
						<th>ClassTeacherName</th>
						<th>PhoneNumber</th>
						<th>Email</th>
						<th>UsernName</th>
						<th>Password</th>
						<th>Gender</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
				<tbody>
					<%@page import="project.ConnectionProvider"%>
					<%@page import="java.sql.*"%>
					
					<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from studentprofile");
	while(rs.next())
	{
	%>
					<tr>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>
						<td><%=rs.getString(8) %></td>
						<td><%=rs.getString(9) %></td>
					</tr>
				</tbody>
				<%
      }
	}
catch(Exception e){
	out.println(e);
}
%>
			</table>
		</div>
	</section>

</div>



<div id="Tokyo1" class="w3-container w3-border city"
	style="display: none">
	<section>
		<!--for demo wrap-->
		<div class="tbl-header">
		
			<table cellpadding="0" cellspacing="0" border="0">
				<thead>
					<tr>
						<th>Roll Number</th>
						<th>Java</th>
						<th>HTML</th>
						<th>CSS</th>
						<th>Javascript</th>
						<th>Core Java</th>
						<th>Phython</th>
						<th>Robotics</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
				<tbody>
					<%@page import="project.ConnectionProvider"%>
					<%@page import="java.sql.*"%>
					
					<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from result");
	while(rs.next())
	{
	%>
					<tr>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>
						<td><%=rs.getString(8) %></td>
					</tr>
				</tbody>
				<%
      }
	}
catch(Exception e){
	out.println(e);
}
%>
			</table>
		</div>
	</section>

</div>

<div id="Tokyo2" class="w3-container w3-border city"
	style="display: none">
	<section>
		<!--for demo wrap-->
		<div class="tbl-header">
			<table cellpadding="0" cellspacing="0" border="0">
				<thead>
					<tr>
						<th>Teacher ID</th>
						<th>Course Name</th>
						<th>Subject Name</th>
						<th>Full Name</th>
						<th>Phone number</th>
						<th>Email</th>
						
					</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
				<tbody>
					<%@page import="project.ConnectionProvider"%>
					<%@page import="java.sql.*"%>
					<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from teacher");
	while(rs.next())
	{
	%>
					<tr>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						
					</tr>
				</tbody>
				<%
      }
	}
catch(Exception e){
	out.println(e);
}
%>
			</table>
		</div>
	</section>

</div>


</html>