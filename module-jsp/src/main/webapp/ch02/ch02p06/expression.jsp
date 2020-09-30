<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Calendar test = Calendar.getInstance();
%>Current Time: <%=test.getTime()%>
</body>
</html>
