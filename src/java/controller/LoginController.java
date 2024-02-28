package controller;

import dao.ProjectDAO;
import dao.UserDAO;
import dto.ProjectDTO;
import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {

    private static final String ADMIN = "adminpage.jsp";
    private static final String HOME = "home.jsp";
    private static final String ERROR = "login.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

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
        HttpSession session = request.getSession();
        String url = ERROR;
        String message = null;

        try {
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");

            UserDAO userDAO = new UserDAO();
            UserDTO loginUser = userDAO.checkLogin(userName, password);
            
            ProjectDAO projectDAO = new ProjectDAO();
            List<ProjectDTO> listNameProject = projectDAO.listNameProject();

            if (loginUser != null) {
                session.setAttribute("LIST_NAME_PROJECT", listNameProject);
                session.setAttribute("LOGIN_USER", loginUser);
                if (loginUser.getRoleId() == 1) {
                    url = ADMIN;
                } else if (loginUser.getRoleId() == 2) {
                    url = HOME;
                } else if (loginUser.getRoleId() == 3) {
                    url = HOME;
                }
            }

        } catch (Exception ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            response.sendRedirect(url);

        }   
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
