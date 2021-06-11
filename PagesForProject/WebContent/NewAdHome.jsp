<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style >
body{
    font-family: sans-serif;
    margin: 0;
    padding: 0;
}

.wrapper{
    background-color:white 
    center center;
    min-height: 20rem;
}

nav{
    width: 100%;
    height: 80px;
    background-color: #800080;
    line-height: 80px;
    padding:10px;
}

nav ul{
    float: right;
    margin: 0;
    margin-right: 1.9rem;
}

nav ul li{
    list-style-type: none;
    display: inline-block;
}

nav ul li a{
    text-decoration: none;
    color: black;
    padding: 20px;
}

img{
    width: 14%;
    margin-left: 1.9rem;
    margin-top: -4%;
}

nav ul li:hover{
    background-color: #e100e1;
    color: #000;
    font-weight: bold;
    font-size: 1.2rem;
}
</style>
<meta charset="ISO-8859-1">
<title>Admin Operation</title>

</head>
<body>
<div class="wrapper">
<!--NAVIGATION-->
       <nav>
          <img src="home\logo.png" class="img" alt="logo"> 
          <ul>
              <li><a href="home.html">HOME</a></li>
              <li><a href="#">Register New Student</a></li>
              <li><a href="#">Add Teacher</a></li>
              <li><a href="#">All Student</a></li>
              <li><a href="#">Add Student Marks</a></li>
              <li><a href="#">Display Marks</a></li>
              <li><a href="#"></a> Add Notics</li>
              <li><a href="Logout.html">LOGOUT</a></li>
          </ul>
       </nav>
<!--END OF NAVIGATION-->
</body>
</html>