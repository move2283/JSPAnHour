<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <title>Simple Form</title>
</head>
<body>
    <%! int submitCount = 0; %> <!-- JSP Declaration -->

    <form action="processForm" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <input type="submit" value="Submit" onclick="<% submitCount++; %>"> <!-- JSP Scriptlet -->
    </form>

    <p>Form has been submitted <%= submitCount %> times.</p> <!-- JSP Expression -->

    <p>The current server time is: <%= new Date() %></p> <!-- JSP Expression -->
</body>
</html>
