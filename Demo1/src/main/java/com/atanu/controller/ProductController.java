package com.atanu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.atanu.Service.impl.ProductServiceImpl;
import com.atanu.model.Product;


@Controller
public class ProductController {

	@Autowired
	private ProductServiceImpl productService;
	
	
	/*@ModelAttribute("product")
	public Product addproduct(){
		return new Product();
	}*/
	
	@RequestMapping(value="/add/product", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product p){
		if(p.getProductid() == 0){
			//new person, add it
			productService.addProduct(p);
		}else{
			//existing person, call update
			this.productService.updateProduct(p);
		}
		//productService.addProduct(p);
		return "redirect:/addPro";
	}
	
	
	/*@ModelAttribute("product")
	public Product addproduct(){
		return new Product();
	}*/
	
	@RequestMapping(value = "/addPro", method = RequestMethod.GET)
	public String listProduct(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("listProduct", this.productService.listProduct());
		return "product";
	}
	
	
	/*@RequestMapping(value = "/addPro", method = RequestMethod.GET)
	public ModelAndView productPage(){
		ModelAndView model=new ModelAndView("product");
		
		return model;
	}*/
	@RequestMapping("/remove/{productid}")
    public String removePerson(@PathVariable("productid") int id){
		
        this.productService.removeProduct(id);
        return "redirect:/addPro";
    }
	
	@RequestMapping("/edit/{productid}")
    public String editPerson(@PathVariable("productid") int id, Model model){
        model.addAttribute("product", this.productService.getProductById(id));
        model.addAttribute("listPersons", this.productService.listProduct());
        return "product";
    }
	
}
