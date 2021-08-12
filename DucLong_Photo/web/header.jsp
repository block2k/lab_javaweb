<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : header
    Created on : May 17, 2021, 1:22:59 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="header">
            <div class="navbar">
                <ul>
                    <li>
                        <a class="active_nav" href="home">
                            My front page
                        </a>
                    </li>
                    <c:forEach var="i"  begin="1" end="3">
                        <li>
                            <a href="ViewGallery?gid=${i}">
                                Gallery ${i}
                            </a>
                        </li>
                    </c:forEach>
                    <li>
                        <a href="contact.jsp">
                            Contact
                        </a>
                    </li>
                </ul>
            </div>
            <div class="main_header">
                <div class="logo_header">
                    <a href="home">
                        <img src="images/logo.png" alt=""/>
                    </a>
                </div>
                <div class="title_header">
                    <div class="header_content">
                        <h1>PHOTOGRAPHER</h1>
                        <span>Welcome to this website</span>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
