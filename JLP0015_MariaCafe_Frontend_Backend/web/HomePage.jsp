<%-- 
    Document   : HomePage
    Created on : 25-Dec-2019, 03:26:19
    /*copyright by fu hub*/
/*link group https://www.facebook.com/groups/498752080529382/*/
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <div class="intro">
                        <div class="intro_image">
                            <img src="images/${intro.picture}" alt=""/>
                        </div>
                        <div class="intro_content">
                            <div class="intro_title">
                                ${intro.title}
                            </div>
                            <div class="intro_des">
                                ${intro.shortDescription}
                            </div>
                        </div>
                    </div>
                    <div class="top2">
                        <c:forEach items="${listTop2Product}" var="o">
                            <div class="perTop2">
                                <div class="top2_image">
                                    <a href="productdetail?pid=${o.id}">
                                        <img src="images/${o.image}" alt=""/>
                                    </a>
                                </div>
                                <div class="top2_title">
                                    ${o.name}
                                </div>
                                <div class="top2_description">
                                    ${o.shortDes}
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="infor">
                        <div class="infor_title">
                            Visit my cafe
                        </div>
                        <p>
                            ${info.shortDes}
                        </p>
                        <p>
                            ${info.address}
                        </p>
                        <p>
                            ${info.tel}
                        </p>
                    </div>
                    <div class="signature">
                        ${info.signature}
                    </div>
                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
