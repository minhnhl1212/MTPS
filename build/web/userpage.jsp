<%-- 
    Document   : userpage
    Created on : Feb 25, 2024, 12:59:42 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/userpage.css"/>
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
                <a href="userpage.jsp" >Thông tin</a>
                <a href="login.jsp" >Đăng xuất</a>
            </div>
        </header> 

        <div class="container">
            <div class="sidebar">
                <img src="images/profile.png" alt="Avatar" class="avatar">
                <a href="#profile">Thông tin của bạn</a>
                <a href="#changePassword">Đổi mật khẩu</a>
                <a href="#depositHistory">Lịch sử đặt cọc</a>
                <a href="#logout">Đăng xuất</a>
            </div>
            <div class="main-content">
                <div id="profile" class="section">
                    <!-- Hiển thị thông tin cá nhân -->
                    <h2>Thông tin cá nhân</h2>
                    <p><strong>User ID:</strong> MinhLe</p>
                    <p><strong>Full Name:</strong> Nguyen Hoang Le Minh</p>
                    <p><strong>Phone:</strong> 0912345678</p>
                    <p><strong>Address:</strong> TP.HCM</p>
                    <p><strong>Role:</strong> Customer</p>
                </div>
                <div id="changePassword" class="section">
                    <!-- Biểu mẫu đổi mật khẩu -->
                    <h2>Đổi mật khẩu</h2>
                    <div class="change-password-form">
                        <label for="currentPassword">Mật khẩu hiện tại:</label>
                        <input type="password" id="currentPassword" name="currentPassword">
                        <label for="newPassword">Mật khẩu mới:</label>
                        <input type="password" id="newPassword" name="newPassword">
                        <label for="confirmPassword">Xác nhận mật khẩu mới:</label>
                        <input type="password" id="confirmPassword" name="confirmPassword">
                        <button type="submit">Đổi mật khẩu</button>
                    </div>
                </div>
                <div id="depositHistory" class="section">
                    <!-- Hiển thị lịch sử đặt cọc -->
                    <h2>Lịch sử đặt cọc</h2>
                    <p><strong>Reservation ID:</strong> 1</p>
                    <p><strong>Reservation Name:</strong> Căn hộ 1 phòng ngủ - Eaton Park</p>
                    <p><strong>Description:</strong> Đã đặt cọc</p>
                    <p><strong>Date:</strong> 24/02/2024</p>
                    <p><strong>Fee:</strong> 50.000.000 VNĐ</p>
                    <p><strong>Status:</strong> Thành công</p>
                </div>
            </div>
        </div>

        <footer>
            <%@include file="footer.jsp" %>
        </footer>


    </body>
</html>
