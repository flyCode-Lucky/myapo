package com.sy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.pojo.DishesType;
import com.sy.service.DishesTypeS;

import sun.print.resources.serviceui;

@Controller
@RequestMapping("/DishesType")
public class DishesTypeC {

	@Autowired
	private DishesTypeS ser;
	
	@RequestMapping("/findall")
	public String findall(Model m) {
		List<DishesType> types=ser.findall();
		m.addAttribute("types", types);
		return "dishestype-list";
	}
	
	@RequestMapping("/update")
	public String update(DishesType type) {
		ser.update(type);;
		return "redirect:/DishesType/findall";
	}
	
	@RequestMapping("/add")
	public String add(DishesType type) {
		ser.add(type);
		return "redirect:/DishesType/findall";
	}
	
	@RequestMapping("/delete")
	public String delete(String ids) {
		String sid[]=ids.split(",");
		for(String id:sid) {
			ser.delete(Integer.parseInt(id));
		}
		
		return "redirect:/DishesType/findall";
	}
	
	
	
	
	
	
	
}
