<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
    #h1{
        text-align: center;
    }
    .form-control{
        width: 400px;
        height: 30px;
        margin-left: 400px;
        padding: auto;
    }
    .col-sm-10 {
        margin: auto;
        padding: auto;
        /* border: 4px solid red; */
        margin-left: 200px;
        margin-bottom: 10px;
    }

    label{
        margin-left: 602px;
        font-size: 20px;
        margin-top: 10px;
    }

    .mb-3 row  {
        margin: auto;
        padding: auto;
        border: 4px solid green;
    }
</style>
</head>
<body>

<h1 id="h1">Adding a New Student</h1>


<form action="process.jsp" method="post">
    Name: <input type="text" name="name" value="<%= request.getParameter("name") %>"><br>
    Email: <input type="email" name="email" value="<%= request.getParameter("email") %>"><br>
    Roll: <input type="number" name="roll" value="<%= request.getParameter("roll") %>"><br>
    Semester: <input type="number" name="sem" min="1" max="2" value="<%= request.getParameter("sem") %>"><br>
    EnglishMarks: <input type="number" name="eng" min="1" max="100" value="<%= request.getParameter("eng") %>"><br>
    MathsMarks: <input type="number" name="math" min="1" max="100" value="<%= request.getParameter("math") %>"><br>
    ScienceMarks: <input type="number" name="sci" min="1" max="100" value="<%= request.getParameter("sci") %>"><br>
    <input type="submit" value="Submit" <a href="/getAllStudents"> </a>
</form>

</body>
</html>