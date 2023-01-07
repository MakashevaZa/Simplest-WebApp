<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>

<html>
    <head>
        <title>List Users</title>
        <link rel="stylesheet" href="/styles/w3.css">
    </head>
    <body class="w3-light-blue">
<div class="w3-container w3-blue-grey w3-opacity w3-center-align">
           <h1 class="w3-center">Super app!</h1>
        </div>

        <div class="w3-center">
            <div>
                <h2>Users</h2>
            </div>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");
            if (names != null && !names.isEmpty()){
                out.println("<ui>");
                for (String s : names){
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ui>");
            } else {
                out.println("The list of users is empty!");
            }
        %>
        </div>
        <div class="w3-center">
            <button onclick="location.href='/'">Back to main</button>
        </div>
    </body>
</html>