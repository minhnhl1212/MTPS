<%-- 
    Document   : login
    Created on : Feb 25, 2024, 12:49:59 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css"/>
    </head>
    <body>
        <div class="login">
            <form action="LoginController" method="post">
                <h1>Đăng nhập</h1>
                <label style="font-weight: bold" for="userName">Tài Khoản</label>
                <input required class="mainLoginInput inputname" type="text" placeholder="Your UserName" id="userName" name="userName"/> 

                <label style="font-weight: bold" for="password">Mật Khẩu</label>
                <input required class="mainLoginInput inputname" type="text" placeholder="Your Password" id="password" name="password"/>
                <p style="color: red">${loginError}</p>
                <input class="btn_login" type="submit" value="Login">
                <p>Tạo tài khoản mới <a href="register.jsp" style="color: blue">Click here</a> </p>
            </form>
        </div>
    </body>
</html>
