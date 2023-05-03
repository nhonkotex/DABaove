package code.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import code.dao.addProductDao;
import code.model.addProduct;

/**
 * Servlet implementation class ProductTimServlet	/ProductTim
 */
public class ProductTimServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private addProductDao userDAO;

    public void init() {
        userDAO = new addProductDao(null);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String searchName = request.getParameter("searchName");
        List<addProduct> userList = null;

        if (searchName != null && !searchName.isEmpty()) {
            userList = userDAO.searchProduct(searchName);
        }

        request.setAttribute("userList", userList);
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }
}
