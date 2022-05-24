package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

	public List<Products> getAllBooks() {
		
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		try {
			String sql = "Select * from product_dt";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p = new Products();
				p.setProductID(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setGender(rs.getString(3));
				p.setPrice(rs.getString(4));
				p.setProductCategory(rs.getString(5));
				p.setStatus(rs.getString(6));
				p.setPhotoName(rs.getString(7));
				p.setEmail(rs.getString(8));
				list.add(p);
			}
		}catch(Exception e) {
			
		}
		
		return list;
		
	}

	public Products getProductbyID(int id) {
		Products p = null;
		try {
			String sql="select * from product_dt where productId = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p = new Products();
				p.setProductID(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setGender(rs.getString(3));
				p.setPrice(rs.getString(4));
				p.setProductCategory(rs.getString(5));
				p.setStatus(rs.getString(6));
				p.setPhotoName(rs.getString(7));
				p.setEmail(rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}
	
	
	
}
