<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : request
    Created on : May 10, 2021, 6:36:01 PM
    Author     : ADMIN
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/viewrequest.css" rel="stylesheet" type="text/css"/>
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
                            Welcome ${sessionScope.account.accountName},<br>
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
                            String formattedDate = myDateObj.format(myFormatObj);
                        %>
                        <a href="#" style="color: #0574b6;font-weight: bold;">
                            Today is: <%= formattedDate%>
                        </a>
                    </div>
                    <div class="content">
                        <div class="title">
                            View request
                        </div>
                        <div class="list_request">
                            <div class="header_request">
                                <form action="SearchRequest" method="POST">
                                    <div class="first">
                                        Select department 
                                        <select name="department">
                                            <c:forEach var="o" items="${dal.allDepartment}">
                                                <option ${o.id==did?"selected":""} value="${o.id}">${o.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="second">
                                        or Enter request title 
                                        <input type="text" name="requesttitle" value="${requesttitle}" />
                                        <button type="submit">
                                            View
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <div class="main_request">
                                <div class="request">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Request title</th>
                                                <th>Date created</th>
                                                <th>Close created</th>
                                                <th>Status</th>
                                                <th>Report to</th>
                                                <th>Detail</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="o" items="${listR}">
                                                <tr>
                                                    <td>
                                                        <a href="SolveRequest?rid=${o.id}" style="color: green">
                                                            ${o.title}
                                                        </a>
                                                    </td>
                                                    <td>${o.createDate}</td>
                                                    <td>${o.closeDate eq null?"N/A":o.closeDate}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${o.status==0}">
                                                                <span style="color: red;">Rejected</span>
                                                            </c:when>
                                                            <c:when test="${o.status==1}">
                                                                <span style="color: green;">Approved</span>
                                                            </c:when>
                                                            <c:when test="${o.status==2}">
                                                                In progress
                                                            </c:when>
                                                            <c:otherwise>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td>
                                                        ${dal.getDepartmentById(o.did).name}
                                                    </td>
                                                    <td>
                                                        ${o.detail?"Solved":"Not solved"}
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
        </div>
    </body>
</html>
