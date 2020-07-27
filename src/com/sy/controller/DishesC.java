package com.sy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.pojo.DishesType;
import com.sy.service.DishesTypeS;

@Controller
@RequestMapping("/type")
public class DishesC {

	@Autowired
	private DishesTypeS ser;
	
	@RequestMapping("/findall")
	public String findall(Model m) {
		List<DishesType> types = ser.findall();
		m.addAttribute("types", types);
		//System.out.println(types);
		return "dishestype-list";
	}
	
	@RequestMapping("/add")
	public String add(DishesType type) {
		ser.add(type);
		return "redirect:/type/findall";
	}
	
	@RequestMapping("/update")
	public String update(DishesType type) {
		ser.update(type);
		return "redirect:/type/findall";
	}
	
	@RequestMapping("/delete")
	public String delete(int id) {
		ser.delete(id);
		return "redirect:/type/findall";
	}
}
