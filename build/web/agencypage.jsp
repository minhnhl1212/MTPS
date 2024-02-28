<%-- 
    Document   : agencypage
    Created on : Feb 26, 2024, 10:23:54 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/agencypage.css"/>
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
                <a href="HomeController" >Dự án</a>
                <a href="contact.jsp" >Liên hệ</a>
                <a href="">|</a>
                <a href="agencypage.jsp" >Thông tin</a>
                <a href="LogoutController" >Đăng xuất</a>
            </div>
        </header> 
        <div class="container">
            <div class="sidebar">
                <img src="images/profile.png" alt="Avatar" class="avatar">
                <a href="#profile">Thông tin của bạn</a>
                <a href="#changePassword">Đổi mật khẩu</a>
                <a href="#saleManagement">Quản lý bài bán</a>
                <a href="#depositHistory">Doanh thu</a>
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
                <div id="saleManagement" class="section">
                    <a class="button-dangbai" href="#postforsale">Đăng bài bán</a>
                    <h2>Danh sách bài đăng</h2>
                    <p><strong>Apartment ID:</strong> 1</p>
                    <p><strong>Apartment Name:</strong> Căn hộ 1 phòng ngủ - Eaton Park</p>
                    <p><strong>Address:</strong> TP HCM</p>
                    <p><strong>Description:</strong>Căn hộ 1 phòng ngủ</p>
                    <p><strong>Acreage:</strong> 50m<sup>2</sup></p>
                    <p><strong>Price:</strong> 50.000.000 VNĐ</p>
                    <p><strong>Status:</strong>Còn</p>
                    <a class="button-chinhsua" href="#edit">Chỉnh sửa</a>
                </div>

                <div id="postforsale" class="section">
                    <div class="upload">
                        <label for="apartmentimg">Ảnh căn hộ</label>
                        <input type="img" id="apartmentimg" name="apartmentimg">
                        <label for="apartmentname">Tên căn hộ</label>
                        <input type="name" id="apartmentname" name="apartmentname">
                        <label for="address">Địa chỉ:</label>
                        <input type="address" id="address" name="address">
                        <label for="status">Trạng thái:</label>
                        <input type="status" id="status" name="status">
                        <label for="price">Giá:</label>
                        <input type="price" id="price" name="price">
                        <label for="description">Mô tả:</label>
                        <input type="description" id="description" name="description">
                        <button type="submit">Đăng bài</button>
                    </div>
                </div>

                <div id="edit" class="section">
                    <h2>Chỉnh sửa thông tin</h2>
                    <p><strong>Apartment ID:</strong> 1</p>
                    <p><strong>Apartment Name:</strong> Căn hộ 1 phòng ngủ - Eaton Park</p>
                    <p><strong>Address:</strong> TP HCM</p>
                    <p><strong>Description:</strong>Căn hộ 1 phòng ngủ</p>
                    <p><strong>Acreage:</strong> 50m<sup>2</sup></p>
                    <p><strong>Price:</strong> 50.000.000 VNĐ</p>
                    <p><strong>Status:</strong>Còn</p>
                    <a href="#saleManagement">xác nhận</a>
                </div>
            </div>
        </div>
    </body>
</html>
