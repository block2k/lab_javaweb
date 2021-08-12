<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : left
    Created on : May 17, 2021, 2:19:34 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="dao" scope="page" class="dal.DAO" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="left">
            <div class="intro_img">
                <img src="images/${dao.introduction.introImage}" alt=""/>
            </div>
            <div class="description_img">
                ${dao.introduction.introCaption}
            </div>
            <div class="content">
                <div class="thumb">
                    <c:forEach var="i" items="${listG}">
                        <div>
                            <div class="thumb_img">
                                <img src="images/${i.picture}" alt=""/>
                            </div>
                            <div class="thumb_title">
                                <a href="ViewGallery?gid=${i.id}">View ${i.name}</a>
                            </div>
                            <div class="thumb_description">
                                ${i.description}
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="center">
                <div class="pagination">
                    <c:if test="${clickPage>1}">
                        <a href="home?page=${clickPage-1}">&laquo;</a>
                    </c:if>
                    <c:forEach var="i" begin="1" end="${endPage}">
                        <a href="home?page=${i}" class="${clickPage==i?"active":""}">${i}</a>
                    </c:forEach>
                    <c:if test="${clickPage<endPage}">
                        <a href="home?page=${clickPage+1}">&raquo;</a>
                    </c:if>
                </div>
            </div>
            <div class="about">
                <div class="about_tile">
                    About me
                </div>
                <div class="about_content">
                    ${dao.introduction.about}
                </div>
            </div>
        </div>
    </body>
</html>
