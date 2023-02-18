<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing Results</title>
</head>
<body>
    <%
    String name1 = request.getParameter("name");
    String email1 = request.getParameter("email");

    String rollParam = request.getParameter("roll");
    int roll1 = (rollParam != null && !rollParam.isEmpty()) ? Integer.parseInt(rollParam) : 0;

    String semParam = request.getParameter("sem");
    int sem1 = (semParam != null && !semParam.isEmpty()) ? Integer.parseInt(semParam) : 0;

    String engParam = request.getParameter("eng");
    int engMarks1 = (engParam != null && !engParam.isEmpty()) ? Integer.parseInt(engParam) : 0;

    String mathParam = request.getParameter("math");
    int mathMarks1 = (mathParam != null && !mathParam.isEmpty()) ? Integer.parseInt(mathParam) : 0;

    String sciParam = request.getParameter("sci");
    int sciMarks1 = (sciParam != null && !sciParam.isEmpty()) ? Integer.parseInt(sciParam) : 0;

    
   
    int totalMarks = engMarks1 + mathMarks1 + sciMarks1;
    double averageMarks = totalMarks / 3.0;
%>  


<h1>Student Details</h1>
<p>Name: <%= name1 %></p>
<p>Email: <%= email1 %></p>
<p>Roll: <%= roll1 %></p>
<p>Semester: <%= sem1 %></p>
<p>English Marks: <%= engMarks1 %></p>
<p>Maths Marks: <%= mathMarks1 %></p>
<p>Science Marks: <%= sciMarks1 %></p>
<p>Total Marks: <%= totalMarks %></p>
<p>Average Marks: <%= averageMarks %></p>
</body>
</html>
