package com.admin.servlet;
import java.io.File;
import java.io.IOException;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/add_products")
@MultipartConfig
public class ProductsAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		String productName= req.getParameter("name");
		String gender = req.getParameter("gender");
		String price = req.getParameter("price");
		String categories = req.getParameter("category");
		String status = req.getParameter("status");
		Part part = req.getPart("img");
		String fileName = part.getSubmittedFileName();
		Products p = new Products(productName,gender,price,categories,status,fileName,"admin");

		ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
	
		boolean f = dao.addProducts(p);
		HttpSession session = req.getSession();
		if(f) {
			String path =getServletContext().getRealPath("")+"img";
			File file = new File(path);
			part.write(path+ File.separator+ fileName);
			session.setAttribute("succMsg", "Adding product success!!!");
			resp.sendRedirect("admin/add_products.jsp");
		}else {
			session.setAttribute("failedMsg", "Failed!!!");
			resp.sendRedirect("admin/add_products.jsp");
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
