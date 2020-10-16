<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
<h4>구구단 출력하기</h4>
<jsp:useBean id="bean" class="ch04.com.dao.GuGuDan"/>
<%
    int num = 5;
    int result[] = bean.process(num);
    for (int i = 0; i < 9; i++)
    {
        out.print(num + " * " + (i + 1) + " = " + result[i] + "<br>");
    }
%>
</body>
</html>
