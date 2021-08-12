<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : home
    Created on : May 13, 2021, 12:26:27 PM
    Author     : ADMIN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
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
                    <div class="title">
                        ${recentnews.title}
                    </div>
                    <div class="image">
                        <img src="images/i1.jpg" alt=""/>
                    </div>
                    <div class="description">
                        ${recentnews.content}
                    </div>
                    <div class="author">
                        <img src="images/comment.gif" alt=""/>
                        <img src="images/timeicon.gif" alt=""/>
                        By ${recentnews.writer} | ${recentnews.getDatePublished()}
                    </div>
                </div>
                <jsp:include page="right.jsp"/>
            </div>
            <div class="footer">
            </div>
        </div>
    </body>
</html>
