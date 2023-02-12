package com.app.grocery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.grocery.dao.GroceryDao;
import com.app.grocery.model.Grocerydetails;

@Service
public class GroceryService {
	@Autowired
	GroceryDao grocerydao;
	public boolean addProduct(Grocerydetails grocerydetails) {
		return grocerydao.InsertProduct(grocerydetails);
	}
   
	public List<Grocerydetails > showAllGrocery(Grocerydetails grocery){
		return grocerydao.showAllExpi();
	}
	
	public boolean delGrocery(Grocerydetails grocery) {
		return grocerydao.removeProduct(grocery);
	}

	public Grocerydetails updategro(Grocerydetails grocery) { 
		return grocerydao.updateGrocery(grocery); }
	
	
	public Grocerydetails searchgrocery(int id){
		return grocerydao.searchgro(id);
	}
	
	public Grocerydetails searchgrocerydetail(String productname){
		return grocerydao.searchgrodet(productname);
	}

	public List<Grocerydetails> viewAllGrocery(Grocerydetails grocery) {
		return grocerydao.viewallproduct();
	}
}
