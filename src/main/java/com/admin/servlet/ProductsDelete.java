package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete_product")
public class ProductsDelete extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			int id = Integer.parseInt(req.getParameter("id"));
			
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
			HttpSession session = req.getSession();
			if (dao.deleteProducts(id)) {
				session.setAttribute("succMsg", "Delete product successfully!!!");
				resp.sendRedirect("admin/all_products.jsp");
			} else {
				session.setAttribute("failedMsg", "Something went wrong!!!");
				resp.sendRedirect("admin/all_products.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
