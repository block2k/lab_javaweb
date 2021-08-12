<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : search
    Created on : May 13, 2021, 12:27:19 PM
    Author     : ADMIN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">

            <div class="pre_header">

            </div>
            <div class="header">
                <h1>My Digital News</h1>
            </div>
            <div class="menu">
                <a href="home">News</a>
            </div>
            <div class="main">
                <div class="left">
                    ${alert}
                    <c:if test="${listA!=null}">
                        <c:forEach items="${listA}" var="o">
                            <div class="per_article">
                                <div class="title">
                                    <a style="text-decoration: none; color: #42554e;" href="view?aid=${o.id}">${o.title}</a>
                                </div>
                                <img src="images/i1.jpg" alt=""/>
                                <div class="search_description">
                                    <p>
                                        ${o.summary}
                                    </p>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                    <div class="paging">
                        <c:forEach var="i"  begin="1" end="${endPage}">
                            <a href="searcharticle?text=${text}&page=${i}" class="${i==index?"active":""}">${i}</a>
                        </c:forEach>
                    </div>
                </div>
                <jsp:include page="right.jsp"/>
            </div>
            <div class="footer">
            </div>
        </div>
    </body>
</html>
