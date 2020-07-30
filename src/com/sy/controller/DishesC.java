package com.sy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.sy.pojo.Dishes;
import com.sy.pojo.DishesType;
import com.sy.service.DishesS;
import com.sy.service.DishesTypeS;
import com.sy.util.FileTools;


@Controller
@RequestMapping("/Dishes")
public class DishesC {

	@Autowired
	private  DishesS  ser;
	
	@Autowired
	private  DishesTypeS  ser2;
	
	@RequestMapping("/findall")
	public  String  findall(Model  m,String  userId) {
		List<Dishes> dishes = ser.findall();		
		m.addAttribute("dishes", dishes);
		if(userId ==null) {
			return "dishes-list";
		}
		return "web/pages/main";
						
	}
	
	
	
	@RequestMapping("/add")
	public  String  add(Model  m) {
		List<DishesType> types = ser2.findall();
		m.addAttribute("types", types);
		return "dishes-add";
	}
	
	
	@RequestMapping(value=("/add"),method = RequestMethod.POST)
	public  String  add(Dishes  dishes,MultipartFile uploadpic, HttpServletRequest request) {//post提交
		//uploadpic必须和页面一样
		//得到上传的名字&执行上传
		String fileName = FileTools.fileUpload(request, uploadpic);
		dishes.setPic(fileName);
		ser.add(dishes);
		
		return "redirect:/Dishes/findall";
	}
	
	@RequestMapping("/update")
	public  String  update(Model  m,int id) {
		Dishes dishes = ser.findbyid(id);
		m.addAttribute("dishes", dishes);
		
		List<DishesType> types = ser2.findall();
		m.addAttribute("types", types);
		
		return "dishes-update";
	}
	@RequestMapping(value=("/update"),method = RequestMethod.POST)
	public  String  update(String rpic,Dishes  dishes,MultipartFile uploadpic, HttpServletRequest request) {//post提交
		
		if(uploadpic.isEmpty()) {//上传路径是否有数据
			//没有选择新的图片
			dishes.setPic(rpic);
		}else {
			//选择新的图片
			String fileName = FileTools.fileUpload(request, uploadpic);
			dishes.setPic(fileName);
		}
	
		ser.update(dishes);
		
		return "redirect:/Dishes/findall";
	}
	
	@RequestMapping("/delete")
	public String delete(String ids) {
		String sid[]=ids.split(",");
		for(String id:sid) {
			ser.delete(Integer.parseInt(id));
		}
		
		return "redirect:/Dishes/findall";
	}
}
