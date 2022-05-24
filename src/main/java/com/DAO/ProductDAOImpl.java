package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Products;

public class ProductDAOImpl implements ProductDAO{
	private Connection conn;
	
	public ProductDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addProducts(Products p) {
		try {
			String sql = "INSERT INTO product_dt(productname, gender, price, productCategory, status, photo, user_email) "
					+ " values (?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getProductName());
			ps.setString(2, p.getGender());
			ps.setString(3, p.getPrice());
			ps.setString(4, p.getProductCategory());
			ps.setString(5, p.getStatus());
			ps.setString(6, p.getPhotoName());
			ps.setString(7, p.getEmail());
			
			if (ps.executeUpdate() == 1)
			{
				return true;
			} else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
