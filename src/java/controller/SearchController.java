package controller;

import dao.ProjectDAO;
import dto.ProjectDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SearchController extends HttpServlet {

    private static final String PROJECT = "project.jsp";
    private static final String HOME = "home.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String url = HOME;
        try {
            processRequest(request, response);
            int listProject = Integer.parseInt(request.getParameter("listProject"));
            int statusList = Integer.parseInt(request.getParameter("statusList"));
            ProjectDAO projectDAO = new ProjectDAO();

            if (statusList == 1) {
                List<ProjectDTO> currentStatusProject = projectDAO.getCurrentStatusProject(listProject);
                if (currentStatusProject != null) {
                    session.setAttribute("CURRENT_STATUS", currentStatusProject);
                    url = PROJECT;
                }
                {
                    request.setAttribute("searchError", "Not Found Project!");
                }
            } else if (statusList == 2) {
                List<ProjectDTO> soonStatusProject = projectDAO.getSoonStatusProject(listProject);
                if (soonStatusProject != null) {
                    session.setAttribute("SOON_STATUS", soonStatusProject);
                    url = PROJECT;
                }
                {
                    request.setAttribute("searchError", "Not Found Project!");
                }
            } else if (statusList == 3) {
                List<ProjectDTO> processStatusProject = projectDAO.getProcessStatusProject(listProject);
                if (processStatusProject != null) {
                    session.setAttribute("PROCESS_STATUS", processStatusProject);
                    url = PROJECT;
                }
                {
                    request.setAttribute("searchError", "Not Found Project!");
                }
            }

        } catch (Exception ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            response.sendRedirect(url);
        }
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
