<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Objects</title>
</head>
<body>
<%
    Enumeration en = request.getHeaderNames();
    while (en.hasMoreElements())
    {
        String headerName = (String) en.nextElement();
        String headerValue = request.getHeader(headerName);

        out.print(headerName + ": " + headerValue + "<br>");
    }
%>
</body>
</html>
