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

	public boolean editProducts(Products p) {
		boolean f= false;
		try {
			String sql = "Update product_dt set productname=?, gender= ?, price= ?, status = ? where productId = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,p.getProductName());
			ps.setString(2,p.getGender());
			ps.setString(3,p.getPrice());
			ps.setString(4,p.getStatus());
			ps.setInt(5,p.getProductID());
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteProducts(int id) {
		try {
			String sql = "DELETE FROM product_dt WHERE productId = ?";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			if (preparedStatement.executeUpdate() == 1) {
				return true;
			} else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Products> getNewProducts() {
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		try {
			String sql = "select * from product_dt where productCategory= ? and status = ?  order by productId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1,"New");
		    ps.setString(2,"Active");
		    ResultSet rs = ps.executeQuery();
		    int i = 1;
		    while(rs.next() && i<=4) {
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
				i++;
		    }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Products> getRecentProducts() {
		
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		try {
			String sql = "select * from product_dt where status = ?  order by productId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1,"Active");
		    ResultSet rs = ps.executeQuery();
		    int i = 1;
		    while(rs.next() && i<=4) {
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
				i++;
		    }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Products> getOldProducts() {
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		try {
			String sql = "select * from product_dt where productCategory= ?  order by productId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1,"Old");
		    ResultSet rs = ps.executeQuery();
		    int i = 1;
		    while(rs.next() && i<=4) {
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
				i++;
		    }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Products> getAllRecentProducts() {
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		try {
			String sql = "select * from product_dt where status = ?  order by productId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1,"Active");
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
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Products> getAllNewProducts() {
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		try {
			String sql = "select * from product_dt where productCategory= ? and status = ?  order by productId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1,"New");
		    ps.setString(2,"Active");
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
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Products> getAllOldProducts() {
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		try {
			String sql = "select * from product_dt where productCategory= ?  order by productId DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1,"Old");
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
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Products> getProductBySearch(String ch) {
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		
		try {
			String sql = "SELECT * FROM product_dt WHERE (productCategory like ? or productname like ? "
					+ " or gender like ? ) and status = ? ";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, "%" + ch + "%");
			preparedStatement.setString(2, "%" + ch + "%");
			preparedStatement.setString(3, "%" + ch + "%");
			preparedStatement.setString(4, "Active");
			
			ResultSet resultset = preparedStatement.executeQuery();
			while (resultset.next()) { 
				p = new Products();
				p.setProductID(resultset.getInt(1));
				p.setProductName(resultset.getString(2));
				p.setGender(resultset.getString(3));
				p.setPrice(resultset.getString(4));
				p.setProductCategory(resultset.getString(5));
				p.setStatus(resultset.getString(6));
				p.setPhotoName(resultset.getString(7));
				p.setEmail(resultset.getString(8));
				
				list.add(p);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}
