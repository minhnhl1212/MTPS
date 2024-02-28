<%-- 
    Document   : deposite
    Created on : Feb 27, 2024, 7:33:31 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/deposite.css"/>
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
                <a href="userpage.jsp" >Thông tin</a>
                <a href="LogoutController" >Đăng xuất</a>
            </div>
        </header>

        <img src="images/background2.jpg" style="width:100%; height: 55vh;"/>
        <div class="project-info">
            <div class="project-description">
                <h2>Căn hộ Eaton Park - 1 phòng ngủ</h2>
                <p><strong>Địa chỉ:</strong> Địa chỉ dự án</p>
                <p><strong>Diện tích:</strong> 100 m<sup>2</sup></p>
                <p><strong>Giá:</strong> 1,000,000,000 VNĐ</p>
                <p><strong>Giới thiệu:</strong>sdasdsadsadasdddddddsdddddddddddddddddddddddddddddddddd</p>
            </div>
        </div>
        <h2>Đơn đặt cọc</h2>
        <div class="deposite-info">
            <div class="deposite">
                <div class="deposite-details">
                    <h3>Tên loại căn hộ: Căn hộ Diyas Sky - 1 phòng Ngủ</h3>
                    <p><strong>Địa chỉ:</strong> Khu đô thị Diyas Sky, Phường 13, Quận Tân Phú, Thành phố Hồ Chí Minh, Việt Nam.</p>
                    <p><strong>Description:</strong> Căn hộ Diyas Sky - 1 phòng ngủ là lựa chọn hoàn hảo cho những người muốn trải nghiệm cuộc sống đô thị năng động và hiện đại. Với không gian tiện ích đầy đủ, thiết kế thông minh và nội thất sang trọng, căn hộ này mang đến sự tiện nghi và thoải mái tối đa cho cư dân. Với vị trí thuận lợi, giao thông kết nối tốt và tiện ích xung quanh, Diyas Sky - Studio hứa hẹn là nơi lý tưởng để an cư lạc nghiệp.</p>
                    <p><strong>Diện tích:</strong> 45m<sup>2</sup></p>
                    <p><strong>Giá:</strong> 1.3 tỷ VNĐ</p>
                    <p><strong>Trạng thái:</strong> Còn</p>
                    <a class="button-datcoc" href="deposite.jsp">Đặt cọc</a>
                </div>        
            </div>
        </div>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>

    </body>
</html>
