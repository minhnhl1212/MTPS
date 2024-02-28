<%-- 
    Document   : register
    Created on : Jan 25, 2024, 11:01:19 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/register.css"/>
    </head>
    <body>
         <form action="RegisterController" method="post">
            <table>
                <h1>Đăng ký tài khoản</h1>

                <label style="font-weight: bold" for="username">Tài Khoản</label>
                <input required class="input" type="text" placeholder="Your Username" id="username" name="username">

                <label style="font-weight: bold" for="password">Mật Khẩu</label>
                <input required class="input" type="password" placeholder="Your Password" id="password" name="password">

                <label style="font-weight: bold" for="repassword">Xác nhận Mật Khẩu</label>
                <input required class="input" type="password" placeholder="Your Password" id="repassword" name="repassword">
                
                <label style="font-weight: bold" for="fullname">Họ và tên</label>
                <input required class="input" type="text" placeholder="Your Full Name" id="fullname" name="fullname">
                
                <label style="font-weight: bold" for="phone">Số điện thoại</label>
                <input required class="input" type="number" placeholder="Your Phone" id="phone" name="phone">
                
                <label style="font-weight: bold" for="address">Địa chỉ</label>
                <input required class="input" type="text" placeholder="Your Address" id="address" name="address">

                <label style="color: red">${registerSuccsess}</label>
                <label style="color: red">${registerError}</label>
                <input class="button" type="submit" value="Sign Up">   
            </table>

        </form>

    </body>
</html>
