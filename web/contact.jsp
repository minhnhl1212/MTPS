<%-- 
    Document   : contact
    Created on : Feb 13, 2024, 2:32:24 AM
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
        .contact-container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-top: 0;
            color: #333;
        }

        form {
            display: grid;
            gap: 15px;
        }

        label {
            font-weight: bold;
        }

        input,
        textarea {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .send {
            margin-top: 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
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
        <div class="contact-container">
            <h1>Liên hệ với chúng tôi</h1>
            <form action="#" method="post">
                <label for="name">Họ và Tên:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Địa chỉ email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Lời nhắn:</label>
                <textarea id="message" name="message" rows="4" required></textarea>

                <button class="send" type="submit">Gửi</button>
            </form>
        </div>

        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
