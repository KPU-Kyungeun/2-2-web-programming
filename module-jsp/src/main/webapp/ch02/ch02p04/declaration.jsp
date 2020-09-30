<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    String message = "Hello, Java Server Pages";

    String getString()
    {
        return message;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=getString()%>
</body>
</html>
