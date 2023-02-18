<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   #navbar{
    text-align: center
   }
  #buttonbox{
    margin: auto;
    padding: auto;
    width: 500px;
    height: 60px;
    /* border: 4px solid red; */
  }
   .btn{
      margin-left: 30px;
      width: 200px;
      height: 50px;
      background-color: aqua;
      font-size: 20px;
      margin-top: 10px;
   }
   .btn a{
    color: black
   }

</style>
</head>
<body>

<h1 id="navbar"> Welcome to Student Reporting System </h1>
<div id="buttonbox"> 
    <button class="btn"><a href="/addStudent">add Student </a></button>
    <button class="btn"> <a href="/home">Home Page </a></button>
    <button class="btn"><a href="/getAllStudents" >All students</a></button>
</div>









</body>
</html>
