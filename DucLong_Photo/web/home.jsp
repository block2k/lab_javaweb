<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : home
    Created on : May 17, 2021, 12:30:37 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <jsp:useBean id="dao" scope="page" class="dal.DAO" />
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="main_content">
                <jsp:include page="left.jsp"/>
                <jsp:include page="right.jsp"/>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
