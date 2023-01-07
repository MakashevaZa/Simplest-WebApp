<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add new user</title>
        <link rel="stylesheet" href="/styles/w3.css">
    </head>

    <body class="w3-light-blue">
<div class="w3-container w3-blue-grey w3-opacity w3-center-align">
            <h1 class="w3-center">Super app!</h1>
        </div>

        <div>
            <%
                if (request.getAttribute("userName") != null) {
                    out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
                }
            %>
            <div>
                <div>
                    <h2>Add user</h2>
                </div>

                <form method="post">
                    <label>Name:
                        <input type="text" name="name"><br />
                    </label>
                    <label>Password:
                        <input type="password" name="pass"><br />
                    </label>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>

        <div class="w3-center">
            <button onclick="location.href='/'">Back to main</button>
        </div>
    </body>
</html>