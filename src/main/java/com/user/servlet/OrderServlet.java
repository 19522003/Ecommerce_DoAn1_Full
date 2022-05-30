package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ProductOrderDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.Product_Order;
import com.entity.Cart;

import javax.servlet.http.HttpSession;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String address = req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String pincode = req.getParameter("pincode");
			String paymentType = req.getParameter("payment");

			String fullAddress = address + ", " + landmark + ", " + city + ", " + state + ", " + pincode;

			CartDAOImpl dao = new CartDAOImpl(DBConnect.getConnection());
			List<Cart> list = dao.getProductByUser(id);
			ProductOrderDAOImpl productOrderDAOImpl = new ProductOrderDAOImpl(DBConnect.getConnection());
			int i = productOrderDAOImpl.getOrderNo();

			HttpSession session = req.getSession();

			if (list.isEmpty()) {
				session.setAttribute("failedMsg", "There is no cart!!!");
				resp.sendRedirect("checkout.jsp");
			} else {
				ArrayList<Product_Order> lstOrder = new ArrayList<Product_Order>();
				Product_Order order;
				for (Cart cart : list) {
					i++;
					order = new Product_Order();
					order.setOrderId("PRODUCT-ORD-00" + i);
					order.setUserName(name);
					order.setEmail(email);
					order.setPhone(phone);
					order.setFulladd(fullAddress);
					order.setProductName(cart.getProductName());
					order.setGender(cart.getGender());
					order.setPrice(cart.getPrice() + "");
					order.setPaymentType(paymentType);
					lstOrder.add(order);
				}

				if (paymentType.equals("noselect")) {
					session.setAttribute("failedMsg", "Please choose payment method!!!");
					resp.sendRedirect("checkout.jsp");
				} else {
					if (productOrderDAOImpl.saveOrder(lstOrder)) {
						resp.sendRedirect("order_success.jsp");
					} else {
						session.setAttribute("failedMsg", "Your order failed");
						resp.sendRedirect("checkout.jsp");
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
