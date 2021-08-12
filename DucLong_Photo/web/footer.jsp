<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : footer
    Created on : May 17, 2021, 1:58:11 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dao" scope="page" class="dal.DAO" />
    </head>
    <body>
        <div class="footer">
            <div class="footer-page-counter">
                <c:forEach var="i" items="${dao.introduction.formatViewPage()}">
                    <span class="footer-page-counter-item">${i}</span>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
