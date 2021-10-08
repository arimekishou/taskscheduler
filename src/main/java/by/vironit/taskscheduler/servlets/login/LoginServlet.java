package by.vironit.taskscheduler.servlets.login;

import by.vironit.taskscheduler.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserService userService = new UserService();

        try {
            if (userService.getAllEmails().contains(email) &&
                    userService.getByEmail(email).getPassword().equals(password) &&
                    userService.getByRole(email).getRole().equals("admin")) {
                req.getRequestDispatcher("/view/adminPage.jsp").forward(req, resp);
            } else if (userService.getAllEmails().equals(email) &&
                    userService.getByEmail(email).getPassword().equals(password) &&
                    userService.getByRole(email).getRole().equals("user")) {
                req.getRequestDispatcher("/view/taskPage.jsp").forward(req, resp);

            } else req.getRequestDispatcher("/view/loginError.jsp").forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        doGet(req, resp);
    }
}

