<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%
    final int maximumFileInputSize = 1024 * 1024 * 10;
    final String fileDirectoryPath = "C:\\Temp\\jspFilesTest";

    try
    {
        DiskFileUpload diskFileUpload = new DiskFileUpload();

        diskFileUpload.setSizeMax(10000000);
        diskFileUpload.setSizeThreshold(4096);
        diskFileUpload.setRepositoryPath(fileDirectoryPath);

        List items = diskFileUpload.parseRequest(request);
        Iterator params = items.iterator();

        while (params.hasNext())
        {
            FileItem item = (FileItem) params.next();

            if (item.isFormField())
            {
                String name = item.getFieldName();
                String value = item.getString("UTF-8");
            }
            else
            {
                String fileFieldName = item.getFieldName();
                String fileName = item.getName();
                String contentType = item.getContentType();

                fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
                long fileSize = item.getSize();

                File file = new File(fileDirectoryPath + "/" + fileName);
                item.write(file);

                out.println("요청 파라미터 이름: " + fileFieldName + "<br>");
                out.println("저장 파일 이름: " + fileName + "<br>");
                out.println("파일 콘텐츠 타입: " + contentType + "<br>");
                out.println("파일 크기: " + fileSize + "<br>");
            }
        }
    }
    catch (Exception exception)
    {
        exception.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
