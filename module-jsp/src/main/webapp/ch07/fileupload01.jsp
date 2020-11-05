<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload01_process.jsp">
    <p>이름: <input type="text" name="name"></p>
    <p>제목: <input type="text" name="subject"></p>
    <p>파일: <input type="file" name="filename"></p>
    <p><input type="submit" value="파일 올리기"></p>
</form>
</body>
</html>
