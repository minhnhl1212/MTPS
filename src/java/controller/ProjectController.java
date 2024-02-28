package controller;

import dao.ProjectDAO;
import dto.ProjectDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProjectController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        ProjectDAO projectDAO = new ProjectDAO();
        try {
            List<ProjectDTO> listCurrent = projectDAO.Currently();
            List<ProjectDTO> listSoon = projectDAO.Soon();
            List<ProjectDTO> listProgress = projectDAO.Progress();

            request.setAttribute("listCurrent", listCurrent);
            request.setAttribute("listSoon", listSoon);
            request.setAttribute("listProgress", listProgress);

            RequestDispatcher dispatcher = request.getRequestDispatcher("project.jsp");
            dispatcher.forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ProjectController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
