package com.ims.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ims.entity.Item;
import com.ims.service.ItemService;





@Controller
public class ItemController {
	@Autowired
	private ItemService itemService;
	

		//http://localhost:8080/view-registration-page
		//Handler Method
		@RequestMapping("/view-registration-page")
		public String viewsItemPage() {
			return"new_registration";
		}
		@RequestMapping("/saveReg")
		public String saveItem (
		
			@RequestParam("name") String name,
			@RequestParam("vendor") String vendor,
			@RequestParam("price") double price,
			@RequestParam("quantity")long quantity,
			ModelMap model
			) {
			Item item= new Item();
			item.setName(name);
			item.setVendor(vendor);
			item.setPrice(price);
			item.setQuantity(quantity);
			
			itemService.saveitem(item);
			model.addAttribute("msg", "Record is saved!!");

			
			return "new_registration";
		
		}
		//ModelAttribute is nothing but it binds the form data to java
		
		@RequestMapping("/getAllReg")
		public String getAllItems(Model model) {
			List<Item> item=itemService.getAllitems();
		model.addAttribute("item",item);
		return "list_registrations";
		}
		@RequestMapping("/delete")
		public String deleteRegById(@RequestParam("id")long id,Model model) {
			itemService.deleteRegById(id); 
			List<Item> item=itemService.getAllitems();
			model.addAttribute("item",item);
			return "list_registrations";
		}
		@RequestMapping("/getRegistrationById")
		public String getRegistationById(@RequestParam("id")long id,  @RequestParam("quantity")long quantity, Model model) {
		Item item =itemService.getAllitemById(id,  quantity);
		model.addAttribute("item",item);
		
		return "Update";
		}
		
		
}
