<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.File" %>
<%
    final String fileDirectoryPath = "C:\\Temp\\jspFilesTest";
    final int maximumFileInputSize = 1024 * 1024 * 10;

    MultipartRequest multipartRequest = new MultipartRequest(request, fileDirectoryPath, maximumFileInputSize, "UTF-8",
            new DefaultFileRenamePolicy());

    Enumeration files = multipartRequest.getFileNames();

    while (files.hasMoreElements())
    {
        String parameterName = (String) files.nextElement();
        String fileName = multipartRequest.getFilesystemName(parameterName);
        String originalFileName = multipartRequest.getOriginalFileName(parameterName);
        String type = multipartRequest.getContentType(parameterName);
        File file = multipartRequest.getFile(parameterName);

        out.println("요청 파라미터 이름: " + parameterName + "<br>");
        out.println("실제 파일 이름: " + originalFileName + "<br>");
        out.println("저장 파일 이름: " + fileName + "<br>");
        out.println("파일 콘텐츠 유형: " + type + "<br>");

        if (file != null)
            out.println("파일 크기: " + file.length() + "<br>");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
