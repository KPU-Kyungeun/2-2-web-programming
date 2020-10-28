<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="WebMarket.dto.Product" %>
<jsp:useBean id="productDAO" class="WebMarket.dao.ProductRepository" scope="session"/>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>상품 목록</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">상품 목록</h1>
    </div>
</div>
<%
    ArrayList<Product> listOfProducts = productDAO.getAllProducts();
%>
<div class="container">
    <div class="row" align="center">
        <%
            for (int i = 0; i < listOfProducts.size(); i++)
            {
                Product product = listOfProducts.get(i);
        %>
        <div class="col-md-4">
            <h3><%=product.getPname()%>
            </h3>
            <p><%=product.getDescription()%>
            </p>
            <p><%=product.getUnitPrice()%>원</p>
        </div>
        <%
            }
        %>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>