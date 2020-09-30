<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String greeting = "도서 웹 쇼핑몰";
%>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Welcome</title>
</head>
<body>
<%@include file="menu.jsp"%>
<h1>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
            </h1>
        </div>
    </div>
</h1>
<%@include file="footer.jsp"%>
</body>
</html>
