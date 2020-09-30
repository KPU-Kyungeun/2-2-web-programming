<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String greeting = "Book Market Mall";
    String tagline = "Welcome to Book Market!";
%>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Welcome</title>
</head>
<body>
<nav class="navbar navbar-expend navbar-dark bg-dark">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="welcome.jsp">Home</a>
        </div>
    </div>
</nav>
<h1>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%=greeting%>
            </h1>
        </div>
    </div>
</h1>
<main role="main">
    <div class="container">
        <h3>
            <%=tagline%>
        </h3>
    </div>
</main>
</body>
</html>
