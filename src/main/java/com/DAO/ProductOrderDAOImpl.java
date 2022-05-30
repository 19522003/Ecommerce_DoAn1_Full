package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Product_Order;
import com.mysql.cj.xdevapi.Result;

public class ProductOrderDAOImpl implements ProductOrderDAO {
	private Connection conn;

	public ProductOrderDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public int getOrderNo() {
		int i = 1;
		try {
			String sql = "select * from product_order";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public boolean saveOrder(List<Product_Order> list) {
		boolean f = false;
		try {
			String sql="insert into product_order(order_id,user_name,email,address,phone,product_name,gender,price,payment) value(?,?,?,?,?,?,?,?,?)";
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement(sql);
			for(Product_Order p :list) {
				ps.setString(1 ,p.getOrderId());
				ps.setString(2 ,p.getUserName());
				ps.setString(3 ,p.getEmail());
				ps.setString(4 ,p.getFulladd());
				ps.setString(5 ,p.getPhone());
				ps.setString(6 ,p.getProductName());
				ps.setString(7 ,p.getGender());
				ps.setString(8 ,p.getPrice());
				ps.setString(9 ,p.getPaymentType());
				ps.addBatch();
			}
			int[] count=ps.executeBatch();
			conn.commit();
			f=true;
			conn.setAutoCommit(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Product_Order> getProduct(String email) {
		List<Product_Order> list = new ArrayList<Product_Order>();
		Product_Order p = null;
		try {
			String sql = "select * from product_order where email=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p = new Product_Order();
				p.setId(rs.getInt(1));
				p.setOrderId(rs.getString(2));
				p.setUserName(rs.getString(3));
				p.setEmail(rs.getString(4));
				p.setFulladd(rs.getString(5));
				p.setPhone(rs.getString(6));
				p.setProductName(rs.getString(7));
				p.setGender(rs.getString(8));
				p.setPrice(rs.getString(9));
				p.setPaymentType(rs.getString(10));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Product_Order> getProduct() {
		List<Product_Order> list = new ArrayList<Product_Order>();
		Product_Order p = null;
		try {
			String sql = "select * from product_order";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p = new Product_Order();
				p.setId(rs.getInt(1));
				p.setOrderId(rs.getString(2));
				p.setUserName(rs.getString(3));
				p.setEmail(rs.getString(4));
				p.setFulladd(rs.getString(5));
				p.setPhone(rs.getString(6));
				p.setProductName(rs.getString(7));
				p.setGender(rs.getString(8));
				p.setPrice(rs.getString(9));
				p.setPaymentType(rs.getString(10));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
