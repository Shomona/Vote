<%-- 
    Document   : index
    Created on : Jan 28, 2019, 10:11:43 PM
    Author     : shomonamukherjee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%= request.getAttribute("doctype") %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project1Task3</title>
    </head>
    <body>
        <h1>Distributed Systems Class Clicker</h1>
        <div>Submit your answer to the current question:</div>
        <div>
        <form action="submit" method="POST">
                <input type="radio" name="vote" value="A" required> A <br>
                <input type="radio" name="vote" value="B" > B <br>
                <input type="radio" name="vote" value="C" > C <br>
                <input type="radio" name="vote" value="D" > D <br>
                <br><br>
                <input type="submit" value="Submit">
        </form>
        </div>
    </body>
</html>
