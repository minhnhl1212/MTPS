package controller;

import dao.UserDAO;
import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterController extends HttpServlet {

    private static final String SUCCESS = "register.jsp";
    private static final String ERROR = "register.jsp";

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
        String url = ERROR;
        try {
            String userName = request.getParameter("username");
            String password = request.getParameter("password");
            String repassword = request.getParameter("repassword");
            String fullName = request.getParameter("fullname");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");

            UserDAO userDAO = new UserDAO();
            UserDTO register = userDAO.register(userName, password, fullName, phone, address);

            if (register != null) {
                url = SUCCESS;
                request.setAttribute("registerSuccsess", "Register Success");
            } else {
                request.setAttribute("registerError", "Wrong UserName or Password");
            }

            

        } catch (Exception e) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            RequestDispatcher dispatcher = request.getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
