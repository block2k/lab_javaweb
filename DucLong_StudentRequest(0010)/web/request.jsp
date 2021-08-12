<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : request
    Created on : May 10, 2021, 6:36:01 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/request.css" rel="stylesheet" type="text/css"/>
        <jsp:useBean id="dal" scope="page" class="dal.DAO" />
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>FPT Education System</h1>
                <h3 style="font-weight: normal">Teacher Control Panel</h3>
                <div class="login">
                    <div class="navigation">
                        <a href="logout">
                            Welcome ${a.accountName},<br>
                            Log out
                        </a> <br>
                        <a href="home">
                            Home
                        </a><br>
                        <a href="viewrequest.jsp">
                            View requests
                        </a><br>
                        <a href="#">
                            Solve requests
                        </a><br>
                        <%
                            LocalDateTime myDateObj = LocalDateTime.now();
                            DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("E, dd/MM/YYYY");
                            DateTimeFormatter myFormatObj1 = DateTimeFormatter.ofPattern("dd/MM/YYYY");
                            String formattedDate = myDateObj.format(myFormatObj);
                            String formattedDate1 = myDateObj.format(myFormatObj1);
                        %>
                        <a href="#" style="color: #0574b6;font-weight: bold;">
                            Today is: <%= formattedDate%>
                        </a>
                    </div>
                    <div class="list_request">
                        <div class="today_request">
                            <div class="title">
                                Request received by today - <%= formattedDate1%>
                            </div>
                            <div class="request">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Department name</th>
                                            <th>Number of request</th>
                                            <th>View detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="o" items="${listD}">
                                            <tr>
                                                <td>
                                                    ${o.name}
                                                </td>
                                                <td>
                                                    ${dal.getTotalRequestTodayByDepartment(o.id)}
                                                </td>
                                                <td>
                                                    <a href="ViewRequest?did=${o.id}">
                                                        View
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="today_request">
                            <div class="title">
                                Request received by last 2 days
                            </div>
                            <div class="request">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Department name</th>
                                            <th>Number of request</th>
                                            <th>View detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="o" items="${listD}">
                                            <tr>
                                                <td>${o.name}</td>
                                                <td>${dal.getTotalRequestLast2DayByDepartment(o.id)}</td>
                                                <td>
                                                    <form action="ViewRequest" method="POST">
                                                        <input type="hidden" name="did" value="${o.id}" />
                                                        <button id="btn" type="submit">
                                                            View
                                                        </button>
                                                    </form>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
