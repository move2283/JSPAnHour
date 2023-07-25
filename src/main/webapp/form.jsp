<%@ page import="org.example.User" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <title>Simple Form</title>
</head>
<body>
    <form action="processForm" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <input type="submit" value="Submit">
    </form>

    <jsp:useBean id="user" class="org.example.User" scope="session" />
    <jsp:setProperty name="user" property="name" param="name" />

    <%
    Integer submitCount = (Integer) session.getAttribute("submitCount");
    if (submitCount == null) {
        submitCount = 0;
    }
    submitCount++;
    session.setAttribute("submitCount", submitCount);
    %>

    <p>Form has been submitted <%= submitCount %> times.</p>

    <p>The current server time is: <%= new Date() %></p>

    <% if (user.getName() != null) { %>
        <p>Welcome, <jsp:getProperty name="user" property="name" />!</p>
    <% } %>

</body>
</html>
