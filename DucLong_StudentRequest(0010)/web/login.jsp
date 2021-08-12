<%-- 
    Document   : home
    Created on : May 10, 2021, 4:44:50 PM
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
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>FPT Education System</h1>
                <h3 style="font-weight: normal">Teacher Control Panel</h3>
                <div class="tille">
                    Member Login
                </div>
                <div class="sub_title">
                    Using your username and password.
                    <br> <br>
                    ${alert}
                </div>
                <div class="login">
                    <div class="navigation">
                        <a href="login">
                            Login
                        </a> <br>
                        <a href="home">
                            Home
                        </a><br>
                        <a href="login">
                            View requests
                        </a><br>
                        <a href="login">
                            Solve requests
                        </a><br>
                        <a href="#" style="color: #0574b6;font-weight: bold;">
                            <%
                                LocalDateTime myDateObj = LocalDateTime.now();
                                DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("E, dd/MM/YYYY");
                                String formattedDate = myDateObj.format(myFormatObj);
                            %>
                            Today is: <%= formattedDate%>
                        </a>
                    </div>
                    <div class="formLogin">
                        <form name="loginForm" action="login" method="POST" onsubmit="return validateFormLogin()">
                            <table class="centerTable">
                                <tr>
                                    <td>Username</td>
                                    <td><input type="text" name="username" value="" maxlength="20"/><span>(*)</span> </td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td>   <input type="password" name="password" value=""/><span>(*)</span> </td>
                                </tr>
                            </table>
                            <div class="vertical-center">
                                <button type="submit">Login</button>
                            </div>
                            <div class="require">
                                The field<span> &nbsp;(*)&nbsp;</span>is required.
                            </div>
                            </tr>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function validateFormLogin() {
                var username = document.forms["loginForm"]["username"].value;
                var password = document.forms["loginForm"]["password"].value;
                if (username == "") {
                    window.alert("Please enter username");
                    return false;
                }
                if (password == "") {
                    window.alert("Please enter password");
                    return false;
                }
            }
        </script>
    </body>
</html>
