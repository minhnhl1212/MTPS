<%-- 
    Document   : home
    Created on : Feb 24, 2024, 2:08:54 PM
    Author     : DELL
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.ProjectDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/home.css"/>
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

        <%
            ArrayList<ProjectDTO> listNameProject = (ArrayList<ProjectDTO>) session.getAttribute("LIST_NAME_PROJECT");
        %>

        <header>
            <div class="header">
                <img src="images/logo.png"/>
                <a href="home.jsp">Trang chủ</a>
                <a href="HomeController" >Dự án</a>
                <a href="contact.jsp" >Liên hệ</a>
                <a href="">|</a>
                <a href="userpage.jsp" >Thông tin</a>
                <a href="login.jsp" >Đăng xuất</a>
            </div>
        </header> 

        <div class="Search">
            <div class="search-container">
                <form action="SearchController" method="GET" class="search-form">
                    <h1>Tìm kiếm căn hộ</h1>
                    <div class="search">
                        <select name="statusList">
                            <option value="">Tiến độ dự án</option>
                            <option value="1">Đang mở bán</option>
                            <option value="2">Sắp mở bán</option>
                            <option value="3">Đang xây dựng</option>
                        </select>
                        <select name="listProject">
                            <option value="">Tên dự án</option>
                            <%
                                for (ProjectDTO listName : listNameProject) {
                            %>
                            <option value="<%=listName.getProjectID()%>"><%=listName.getProjectName()%></option>
                            <%}%>
                        </select>
                        <button type="submit">Tìm kiếm</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="apartment">
            <h2>Căn hộ</h2>

            <div class="info">
                <img src="images/background2.jpg" style="width: 450px;"/>
                <p>
                    Các căn hộ trong các dự án thường mang đến một lối sống hiện đại và tiện ích cho cư dân. 
                    Với tiện ích đa dạng như hồ bơi, phòng tập gym và khu vui chơi, cùng với hệ thống an ninh và an toàn, cư dân có thể tận hưởng không gian sống an ninh và tiện lợi. 
                    Vị trí thuận lợi ở những khu vực trung tâm, thiết kế hiện đại và đa dạng về loại hình căn hộ như studio, 1, 2, hoặc 3 phòng ngủ là những điểm nổi bật. 
                    Dịch vụ quản lý chuyên nghiệp và chính sách hỗ trợ khách hàng giúp tối ưu hóa trải nghiệm sống và sở hữu bất động sản cho cư dân.
                </p>
            </div>
        </div>

        <h2>Chủ đầu tư tại Việt Nam</h2>
        <div class="investor">
            <p>Tổng hợp lựa chọn  các dự án bất động sản chất lượng và mới nhất đang trong quá trình mở bán trên toàn quốc. Bạn có thể xem thông tin từng dự án và liên hệ ngay với chúng tôi để được tư vấn chi tiết.</p>
            <p>Thị trường bất động sản nước ta những năm gần đây có nhiều chuyển biến tích cực với rất nhiều các phân khúc đã gặt hái được thành công. Điển hình như phân khúc đất nền, căn hộ chung cư, khu biệt thự, khu nghỉ dưỡng…Sự thành công này là do những chủ trương, chính sách của nước ta trong việc phát triển hệ thống cơ sở hạ tầng nhằm thu hút đầu tư của các doanh nghiệp lớn nhỏ trong và ngoài nước, vì vậy mà ngày càng nhiều các doanh nghiệp lớn đầu tư vào Việt Nam, nhờ đó mà các dự án bất động sản không ngừng phát triển.</p>
            <p>Hiện trên cả nước có rất nhiều các dự án bất động sản lớn đang được triển khai của các nhà đầu tư lớn như: Vingroup, FLC, Sungroup, Zen Group, Novaland… với rất nhiều các loại hình như: dự án nghỉ dưỡng tại các thành phố ven biển, các tỉnh miền núi có khí hậu trong lành mát mẻ, dự án khu đô thị, dự án chung cư từ cao cấp đến bình dân tại tất cả các tỉnh thành phố trong cả nước. Ngoài ra, nhiều ông trùm bất động sản triển khai xây dựng các dự án khu trung tâm thương mại, nhà phố kết hợp nghỉ dưỡng… nhằm đáp ứng mọi nhu cầu về chất lượng cuộc sống cho người dân.</p>
            <p>Quý khách hàng muốn cập nhật thông tin về các dự án bất động sản đang triển khai, hãy truy cập vào Batdongsanonline.vn – trang thông tin bất động sản uy tín hàng đầu Việt Nam. Tại đây bạn sẽ được cung cấp mọi thông tin liên quan đến từng dự án đang được triển khai một cách nhanh nhất, chính xác nhất và đầy đủ nhất: từ vị trí, diện tích, tên dự án, chủ đầu tư, giá cả… đều được cập nhật liên tục. Hãy lựa chọn batdongsanonline.vn là kênh thông tin bất động sản uy tín dành cho bạn!!!</p>   
        </div>

        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
