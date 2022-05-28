package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/remove_product")
public class RemoveProductCart extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid = Integer.parseInt(req.getParameter("uid"));
		int pid = Integer.parseInt(req.getParameter("pid"));
		CartDAOImpl dao = new CartDAOImpl(DBConnect.getConnection());
		boolean f = dao.deleteProduct(pid,uid);
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("succMsg", "Product has removed from Cart");
			resp.sendRedirect("checkout.jsp");
		}else {
			session.setAttribute("failedMsg", "Fail to remove from Cart!!!");
			resp.sendRedirect("checkout.jsp");
		}
	}

}
