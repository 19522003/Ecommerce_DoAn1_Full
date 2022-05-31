package com.admin.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.*;

@WebServlet("/edit_products")
public class EditProductsServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String productName= req.getParameter("name");
			String gender = req.getParameter("gender");
			String price = req.getParameter("price");
			String status = req.getParameter("status");
			Products p = new Products();
			p.setProductID(id);
			p.setProductName(productName);
			p.setPrice(price);
			p.setGender(gender);
			p.setStatus(status);
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
			boolean f = dao.editProducts(p);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succMsg", "Update Successfully!!!");
				resp.sendRedirect("admin/all_products.jsp");
			}else {
				session.setAttribute("failedMsg", "Failed to update product!!!");
				resp.sendRedirect("admin/all_products.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
