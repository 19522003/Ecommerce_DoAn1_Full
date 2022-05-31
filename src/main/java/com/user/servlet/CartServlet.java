package com.user.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Products;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;


@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int pid = Integer.parseInt(req.getParameter("pid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConnection());
			Products p=dao.getProductbyID(pid);
			Cart c = new Cart();
			c.setPid(pid);
			c.setUserId(uid);
			c.setProductName(p.getProductName());
			c.setGender(p.getGender());
			c.setPrice(Double.parseDouble(p.getPrice()));
			c.setTotalPrice(Double.parseDouble(p.getPrice()));
			
			CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getConnection());
			
			boolean f = dao2.addCart(c);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succCart", "Product has been added to cart");
				resp.sendRedirect("all_new_products.jsp");
			}else {
				session.setAttribute("failedCart", "Failed to add product to cart");
				resp.sendRedirect("all_new_products.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
