<%-- 
    Document   : adminpage
    Created on : Feb 27, 2024, 3:57:19 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/adminpage.css"/>
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
                <a href="adminpage.jsp" >Thông tin</a>
                <a href="LogoutController" >Đăng xuất</a>
            </div>
        </header> 
        <div class="container">
            <div class="sidebar">
                <a href="#postmanagement">Quản lý bài đăng</a>
                <a href="#accountmanagement">Quản lý tài khoản</a>
                <a href="#depositHistory">Doanh thu</a>
            </div>

            <div class="main-content">
                <div id="postmanagement" class="section">
                    <table>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Price</th>
                                <th>Approve</th>
                                <th>Reject</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Dữ liệu từ database sẽ được hiển thị ở đây -->
                            <tr>
                                <td>1</td>
                                <td>database</td>
                                <td>database</td>
                                <td>database</td>
                                <td><button class="button-approve">Approve</button></td>
                                <td><button class="button-reject">Reject</button></td>
                                <td><button class="button-delete">Delete</button></td>
                            </tr>
                            <!-- Các hàng dữ liệu khác sẽ được thêm tương tự -->
                        </tbody>
                    </table>
                </div>

                <div id="accountmanagement" class="section">
                    <table>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>User ID</th>
                                <th>FullName</th>
                                <th>Phone</th>
                                <th>Role</th>
                                <th>Setting</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Dữ liệu từ database sẽ được hiển thị ở đây -->
                            <tr>
                                <td>1</td>
                                <td>database</td>
                                <td>database</td>
                                <td>database</td>
                                <td>database</td>
                                <td><button class="button-reject">Setting</button></td>
                                <td><button class="button-delete">Delete</button></td>
                            </tr>
                            <!-- Các hàng dữ liệu khác sẽ được thêm tương tự -->
                        </tbody>
                    </table>
                </div>

            </div>  
        </div>
        
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
