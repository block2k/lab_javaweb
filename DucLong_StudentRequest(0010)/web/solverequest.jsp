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
        <link href="css/solverequest.css" rel="stylesheet" type="text/css"/>
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
                        </a>  <br>
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
                    <div class="content">
                        <div class="title">
                            Request ID: ${re.id}
                        </div>
                        <div class="show_request">
                            <form action="#" method="POST">
                                <table>
                                    <tr>
                                        <td>Request to department</td>
                                        <td>
                                            <input id="readonly" type="text" name="department" value="${dal.getDepartmentById(re.did).name}" readonly=""/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student ID</td>
                                        <td>
                                            <input id="readonly" type="text" name="studentid" value="${dal.getStudentByRequestId(re.id).studentId}" readonly=""/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Student name</td>
                                        <td>
                                            <input id="readonly" type="text" name="studentname" value="${dal.getStudentByRequestId(re.id).studentName}" readonly=""/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Date created</td>
                                        <td>
                                            <input id="readonly" type="date" readonly="" name="datecreate" value="${re.createDate}" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Request title</td>
                                        <td>
                                            <input id="readonly" type="text" name="requesttitle" readonly="" value="${re.title}" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Request content</td>
                                        <td>
                                            <textarea name="content" readonly="" id="readonly">
                                                ${dal.getStudentByRequestId(re.id).content}
                                            </textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Request state</td>
                                        <td>
                                            <input type="radio" checked="" name="state" value="1" /> <span style="color: blue;"> Approved </span>
                                            <input type="radio" name="state" value="0" /> <span style="color: red;">Rejected</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Close date </td>
                                        <td>
                                            <input type="date" required="" name="closedate" value="" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Solved by </td>
                                        <td>
                                            <input id="readonly" type="text" name="solveby" value="${sessionScope.account.accountName}" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>School's solution </td>
                                        <td>
                                            <textarea name="solution">
                                            
                                            </textarea>
                                        </td>
                                    <input type="hidden" name="rid" value="${re.id}" />
                                    </tr>
                                </table>
                                <button type="submit">Save</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
