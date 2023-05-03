package code.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import code.dao.AddUserDao;
import code.model.Adduser;

/**
 * Servlet implementation class UserSearchServlet /UserSearch
 */
public class UserSearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AddUserDao userDAO;

    public void init() {
        userDAO = new AddUserDao(null);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String searchName = request.getParameter("searchName");
        List<Adduser> userList = null;

        if (searchName != null && !searchName.isEmpty()) {
            userList = userDAO.searchUsers(searchName);
        }

        request.setAttribute("userList", userList);
        request.getRequestDispatcher("QLUser.jsp").forward(request, response);
    }
}