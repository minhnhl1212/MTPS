<%-- 
    Document   : footer
    Created on : Feb 13, 2024, 2:36:34 AM
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
        .site-footer {
            background-color: #333333d4;
            color: #fff;
            margin-top: 50px;
            padding: 40px 0;
        }

        .footer-container {
            display: flex;
            justify-content: space-around;
        }

        .footer-about,
        .footer-contact,
        .footer-social {
            flex: 1;
            padding: 0 20px;
        }

        .footer-about h3,
        .footer-contact h3,
        .footer-social h3 {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .footer-social ul {
            list-style-type: none;
            padding: 0;
        }

        .footer-social ul li {
            margin-bottom: 10px;
        }

        .footer-social ul li a {
            color: #fff;
            text-decoration: none;
        }

        .footer-social ul li a:hover {
            text-decoration: underline;
        }

        .footer-bottom {
            background-color: #333333b8;
            text-align: center;
            padding: 10px 0;
        }
    </style>
    <body>
        <footer class="site-footer">
            <div class="footer-container">
                <div class="footer-about">
                    <h3>Về Chúng Tôi</h3>
                    <p>Sự hài lòng của khách hàng là niềm vinh hạnh lớn nhất đối với chúng tôi</p>
                </div>
                <div class="footer-contact">
                    <h3>Liên Hệ</h3>
                    <p>123 Đường ABC, Thành phố XYZ</p>
                    <p>Điện thoại: 0123 456 789</p>
                    <p>Email: mtpsapartment@gmail.com</p>
                </div>
                <div class="footer-social">
                    <h3>Kết nối với chúng tôi</h3>
                    <ul>
                        <li><a href="https://www.facebook.com/nhlminh1212">Facebook</a></li>
                        <li><a href="https://www.facebook.com/nhlminh1212">Youtube</a></li>
                        <li><a href="https://www.facebook.com/nhlminh1212">Instagram</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Công ty Bất động sản MTPS. Tất cả quyền được bảo lưu.</p>
            </div>
        </footer>
    </body>
</html>
