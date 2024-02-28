<%-- 
    Document   : projectlist
    Created on : Feb 25, 2024, 12:46:28 PM
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
        <link rel="stylesheet" href="css/project.css"/>
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
        .project{
            width: calc(35.5% - 100px);
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
                <a href="LogoutController" >Đăng xuất</a>
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

        <%
            ArrayList<ProjectDTO> getCurrentStatusProject = (ArrayList<ProjectDTO>) session.getAttribute("CURRENT_STATUS");
            ArrayList<ProjectDTO> getSoonStatusProject = (ArrayList<ProjectDTO>) session.getAttribute("SOON_STATUS");
            ArrayList<ProjectDTO> getProcessStatusProject = (ArrayList<ProjectDTO>) session.getAttribute("PROCESS_STATUS");
            if (getCurrentStatusProject != null) {
                for (ProjectDTO current : getCurrentStatusProject) {
        %>

        <div class="project">
            <a href="apartment.jsp?ProjectID=<%=current.getProjectID()%>" class="project-link"><br/>
                <img src="<%=current.getImgPath()%>" alt="<%=current.getProjectName()%>" class="project-image">
                <h3 class="project-title"><%=current.getProjectName()%></h3>
                <p class="project-info"><%=current.getAddress()%></p>
                <p class="project-info"><%=current.getStatus()%></p>
                <p class="project-info"><%=current.getInvestor()%></p>
            </a>
        </div>

        <%
            session.removeAttribute("CURRENT_STATUS");
        %>

        <% }
        } else if (getSoonStatusProject != null) {
            for (ProjectDTO soon : getSoonStatusProject) {
        %> 
        <div class="project">
            <a href="apartment.jsp?ProjectID=<%=soon.getProjectID()%>" class="project-link"><br/>
                <img src="<%=soon.getImgPath()%>" alt="<%=soon.getProjectName()%>" class="project-image">
                <h3 class="project-title"><%=soon.getProjectName()%></h3>
                <p class="project-info"><%=soon.getAddress()%></p>
                <p class="project-info"><%=soon.getStatus()%></p>
                <p class="project-info"><%=soon.getInvestor()%></p>
            </a>
        </div>

        <%
            session.removeAttribute("SOON_STATUS");
        %>

        <%}
        } else if (getProcessStatusProject != null) {
            for (ProjectDTO process : getProcessStatusProject) {
        %>
        <div class="project">
            <a href="apartment.jsp?ProjectID=<%=process.getProjectID()%>" class="project-link"><br/>
                <img src="<%=process.getImgPath()%>" alt="<%=process.getProjectName()%>" class="project-image">
                <h3 class="project-title"><%=process.getProjectName()%></h3>
                <p class="project-info"><%=process.getAddress()%></p>
                <p class="project-info"><%=process.getStatus()%></p>
                <p class="project-info"><%=process.getInvestor()%></p>
            </a>
        </div>

        <%
            session.removeAttribute("PROCESS_STATUS");
        %>

        <%}
        } else {
        %>

        <h2>Đang mở bán</h2>
        <div class="project-list">
            <%
                ArrayList<ProjectDTO> listCurrent = (ArrayList<ProjectDTO>) session.getAttribute("listCurrent");
                for (ProjectDTO current : listCurrent) {
            %> 

            <div class="project">
                <a href="apartment.jsp?ProjectID=<%=current.getProjectID()%>" class="project-link"><br/>
                    <img src="<%=current.getImgPath()%>" alt="<%=current.getProjectName()%>" class="project-image">
                    <h3 class="project-title"><%=current.getProjectName()%></h3>
                    <p class="project-info"><%=current.getAddress()%></p>
                    <p class="project-info"><%=current.getStatus()%></p>
                    <p class="project-info"><%=current.getInvestor()%></p>
                </a>
            </div>
            <%}%>
        </div>

        <h2>Sắp mở bán</h2>  
        <div class="project-list">
            <%
                ArrayList<ProjectDTO> listSoon = (ArrayList<ProjectDTO>) session.getAttribute("listSoon");
                for (ProjectDTO soon : listSoon) {
            %>
            <div class="project">
                <a href="apartment.jsp?ProjectID=<%=soon.getProjectID()%>" class="project-link"><br/>
                    <img src="<%=soon.getImgPath()%>" alt="<%=soon.getProjectName()%>" class="project-image">
                    <h3 class="project-title"><%=soon.getProjectName()%></h3>
                    <p class="project-info"><%=soon.getAddress()%></p>
                    <p class="project-info"><%=soon.getStatus()%></p>
                    <p class="project-info"><%=soon.getInvestor()%></p>
                </a>
            </div>

            <%}%>
        </div>

        <h2>Đang xây dựng</h2>
        <div class="project-list">
            <%
                ArrayList<ProjectDTO> listProgress = (ArrayList<ProjectDTO>) session.getAttribute("listProgress");
                for (ProjectDTO process : listProgress) {
            %>
            <div class="project">
                <a href="apartment.jsp?ProjectID=<%=process.getProjectID()%>" class="project-link"><br/>
                    <img src="<%=process.getImgPath()%>" alt="<%=process.getProjectName()%>" class="project-image">
                    <h3 class="project-title"><%=process.getProjectName()%></h3>
                    <p class="project-info"><%=process.getAddress()%></p>
                    <p class="project-info"><%=process.getStatus()%></p>
                    <p class="project-info"><%=process.getInvestor()%></p>
                </a>
            </div>
            <%}%>
        </div>
        <%}%>
        
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
