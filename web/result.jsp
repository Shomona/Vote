<%-- 
    Document   : result
    Created on : Jan 29, 2019, 5:16:47 PM
    Author     : shomonamukherjee
--%>

<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%= request.getAttribute("doctype")%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project1Task3</title>
    </head>
    <body>
        <h1>Distributed Systems Class Clicker</h1>

        <% if (request.getAttribute("hasVotes").equals("true")) { %>
        <div>The results from the survey are as follows:</div>
        <!-- Code to generate the amount of clicks -->
        <%
            //Iterate over the returned map and set the key value pairs
            Map<String, Integer> votes = (TreeMap<String, Integer>) request.getAttribute("votesMap");

            for (Entry<String, Integer> entry : votes.entrySet()) {
                String option = entry.getKey();
                int vote = entry.getValue();
                if (vote > 0) {
        %> <div> <%= option%>:  <%= vote%> </div> 
        
        <% }
            }%>
          <div>These results have now been cleared.</div>  
       <% } else {%>
        <div> There are currently no results. </div>

        <% }%>




    </body>
</html>
