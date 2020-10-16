<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
<%
    int num = Integer.parseInt(request.getParameter("num"));

    for (int i = 1; i < 10; i++)
    {
        out.print(num + " * " + i + " = " + (num * i) + "<br>");
    }
%>
</body>
</html>
