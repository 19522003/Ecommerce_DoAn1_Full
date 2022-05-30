package com.DAO;

import com.entity.Products;
import java.util.List;
public interface ProductDAO {
	public boolean addProducts(Products p);
	
	public List<Products> getAllBooks();
	
	public Products getProductbyID(int id);
	
	public boolean editProducts(Products p);
	
	public boolean deleteProducts(int id);
	
	public List<Products> getNewProducts();
	
	public List<Products> getRecentProducts();
	
	public List<Products> getOldProducts();
	
	public List<Products> getAllRecentProducts();
	
	public List<Products> getAllNewProducts();
	
	public List<Products> getAllOldProducts();
	
	public List<Products> getProductBySearch(String ch);
}
