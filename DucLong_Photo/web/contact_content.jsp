<%-- 
    Document   : contact_content
    Created on : May 17, 2021, 2:59:33 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="dal" scope="page" class="dal.DAO" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="left">
            <div class="main_contact">
                <div class="contact_title">
                    Contact
                </div>
                <div class="contact_detail">
                    <div class="detailtitle">
                        PHOTOGRAPHER
                    </div>
                    <div class="address_contact">
                        <p>Adress: ${dal.contact.address}</p>
                        <p>City: ${dal.contact.city}</p>
                        <p>Country: ${dal.contact.country}</p>
                    </div>
                    <div class="information">
                        <p>Tel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${dal.contact.tel}</span> </p>
                        <p>Email:&nbsp;&nbsp;&nbsp; <span> ${dal.contact.email}</span>  </p>
                    </div>
                </div>
                <div class="map">
                    <img src="images/map.png" alt=""/>
                </div>  
            </div>
        </div>
    </body>
</html>
