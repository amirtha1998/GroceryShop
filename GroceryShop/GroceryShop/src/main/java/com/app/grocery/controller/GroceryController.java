package com.app.grocery.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.grocery.model.Grocerydetails;
import com.app.grocery.service.GroceryService;


@Controller
public class GroceryController {
	
	
	@Autowired
	GroceryService groceryservice;
	
	@RequestMapping("/login")
	public String loginPage() {
		return "Login";
	}
	
	@PostMapping("/userlogin")
	 public String validateUser(@RequestParam String name,@RequestParam String pass,Model model) {
		if(name.equals("keerthi")&&pass.equals("keer")) {

			return "home";
		}
		else {
			model.addAttribute("error","Invalid UserName or Password");
			return "Login";
		}
	}
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
		@RequestMapping("/registerProduct")
		public String registerProduct(@ModelAttribute("product") Grocerydetails grocery,Model model) {

			List<String> stock = Arrays.asList("Select","In stock","Out of stock");
			model.addAttribute("stock", stock);
			return "grocerydetails";
		}
		
		@PostMapping("/productRegister")
		public String groceryRegister(@ModelAttribute("product") Grocerydetails grocery)
		{
	
	
			boolean flag=groceryservice.addProduct(grocery);
		//	System.out.println(flag);
			if(flag) {
				//model.addAttribute("grocery",grocery );
				return "redirect:/home";
			}else {
				return "grocerydetails";
			}
		}
		@RequestMapping("/Expiredgrocerylist")
		public String listAllProduct(Grocerydetails grocery,Model model) {
			List<Grocerydetails> groces= groceryservice.showAllGrocery(grocery);
			model.addAttribute("grocerylist",groces);
			return "grocery";
		}
		
		@RequestMapping("/viewproduct")
		public String viewproduct(Grocerydetails grocery,Model model) {
			List<Grocerydetails> groces= groceryservice.viewAllGrocery(grocery);
			model.addAttribute("grocerylist",groces);
			return "viewproduct";
		}
		@RequestMapping("/Delete")
		public String deleteGrocery(@ModelAttribute("grocery") Grocerydetails grocery) {
			return "Expiredgrocerylist";
		}

		@PostMapping("/deletegrocery")
		public String deleteGroceryList(@ModelAttribute("grocery")  Grocerydetails grocery) {
			boolean flag = groceryservice.delGrocery(grocery);
			if (flag) {
				return "expired";
			} else {
				return "Expiredgrocerylist";
			}
		}
		
		@GetMapping("/updateGrocery")
		public String updateGroceryDetails() {
			return "updategrocery";
		}
		
		@GetMapping("/groceryUpdate")
		public String getGroceryDetails(int id,@ModelAttribute("grocery") Grocerydetails grocery,Model model) {
			Grocerydetails gro=groceryservice.searchgrocery(id);
			model.addAttribute("gro",gro);
			List<String> stock = Arrays.asList("Select","In stock","Out of stock");
			model.addAttribute("stock", stock);
			return "grocerydetail";
		}
		
		@PostMapping("/updateMsg")
		public String updategro(@ModelAttribute("grocery") Grocerydetails grocery,Model model) {
			model.addAttribute("gro", groceryservice.updategro(grocery));
			return "updateMsg";
		}
		
		@RequestMapping("/searchProduct")
		public String searchgroceryinfo(@ModelAttribute("grocery")Grocerydetails grocery) {
			return "search";
		}
		
		@PostMapping("/searchedresult")
		public String listSearchgrocery(String productname,Model model) {
			model.addAttribute("gro",groceryservice.searchgrocerydetail(productname));
			return "searchresult";
		}
		
}
