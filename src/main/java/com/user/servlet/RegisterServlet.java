package com.user.servlet;

import java.io.IOException;
import javax.servlet.http.HttpSession;
import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String password = req.getParameter("password");
			String check = req.getParameter("check");
			// System.out.println(name + " " + email + " " + password + " " + phone + " " +
			// check);
			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhone(phone);
			us.setPassword(password);

			HttpSession session = req.getSession();

			if (check != null) {
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
				boolean f2 = dao.checkUser(email);
				if (f2) {
					boolean f = dao.userRegister(us);
					if (f) {
						session.setAttribute("succMsg", "Register Successfully...");
						resp.sendRedirect("register.jsp");
					} else {
						session.setAttribute("failedMsg", "Something wrong!!!");
						resp.sendRedirect("register.jsp");
					}
				} else {
					session.setAttribute("failedMsg", "This email address is already being used!!!");
					resp.sendRedirect("register.jsp");
				}
			} else {
				session.setAttribute("failedMsg", "Please check agree & term condition!!!");
				resp.sendRedirect("register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
