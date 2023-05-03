package code.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import code.dao.addProductRDao;
import code.model.addProductR;

/**
 * Servlet implementation class themProductRServlet 	themProductR
 */
public class themProductRServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    private addProductRDao addhangDao;
    public void init() {
 	   addhangDao = new addProductRDao(null);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("nameR");
		String category = request.getParameter("categoryR");
		String price = request.getParameter("priceR");
		String sale = request.getParameter("saleR");
		String image = request.getParameter("imageR");
		String chitiet = request.getParameter("chitietR");
		
		addProductR addsp = new addProductR();
		addsp.setNameR(name);
		addsp.setCategoryR(category);
		addsp.setPriceR(price);
		addsp.setSaleR(sale);
		addsp.setImageR(image);
		addsp.setChitietR(chitiet);
		try {
		addhangDao.registerAddProductR(addsp);
		}catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
	}
		response.sendRedirect("test1.jsp");
	}

}

