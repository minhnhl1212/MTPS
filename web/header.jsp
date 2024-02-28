<%-- 
    Document   : header
    Created on : Feb 24, 2024, 2:08:46 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .header img{
            width: 100px;
            height: 60px;
        }
        .header {
            width: 100%;
            height: 60px;
            background-color: white;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        a {
            text-decoration: none;
            color: black;
            margin: 0 90px;
            font-size: 14px;
            font-family: arial;
        }
    </style>
    <body>
        <header>
            <div class="header">
                <img src="images/logo.png"/>
                <a href="home.jsp">Trang chủ</a>
                <a href="project.jsp" >Dự án</a>
                <a href="contact.jsp" >Liên hệ</a>
                <a href="">|</a>
                <a href="login.jsp" >Đăng nhập</a>
                <a href="register.jsp" >Đăng ký</a>
            </div>
        </header> 
    </body>
</html>
