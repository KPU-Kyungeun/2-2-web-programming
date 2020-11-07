<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
<form method="post" action="fileupload02_process.jsp" enctype="multipart/form-data">
    <p>파일: <input type="file" name="filename" value="찾아보기"></p>
    <input type="submit" value="파일 올리기">
</form>
</body>
</html>
