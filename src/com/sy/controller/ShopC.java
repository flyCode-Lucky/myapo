package com.sy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.pojo.ShoppingCar;
import com.sy.pojo.Users;
import com.sy.service.OrdersS;
import com.sy.service.ShopS;

@Controller
@RequestMapping("/shop")
public class ShopC {

	@Autowired
	private ShopS ser;
	
	@Autowired
	private OrdersS ser2;
	
	@RequestMapping("/shop")
	public String shop(int userId,String dishesName,ShoppingCar car,HttpServletRequest request) {
		ShoppingCar shop=ser.find(userId, dishesName);
		if(shop==null) {
			ser.add(car);
		}else {
			ser.update(shop);
		}
		HttpSession session=request.getSession();
		Users users = (Users) session.getAttribute("users");
		return "redirect:/users/login?loginName="+users.getLoginName()+"&password="+users.getPassword();
	}
	
	@RequestMapping("/find2")
	public String find2(HttpServletRequest request,Model m) {
		Users users=(Users) request.getSession().getAttribute("users");
		List<ShoppingCar> cars=ser.find2(users.getId());
		m.addAttribute("cars", cars);
		
		//总数与合计
		int i=0;
		int j=0;
		for(ShoppingCar c:cars) {
			i+=c.getNumber();
			j+=c.getNumber()*c.getPrice();
		}
		m.addAttribute("i", i);
		m.addAttribute("j", j);
		
		return "web/pages/shoppingCart";
	}
	
	@RequestMapping("/delete")
	public String delete(int id,int userId) {
		ser.delete(id);
		return "redirect:/shop/find2?userId="+userId;
	}
	
	//全部提交
	@RequestMapping("/addall")
	public String addall(HttpServletRequest request) {
		//删除原来的订单表
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("users");
		ser2.delete(users.getId());
		//将购物车数据删除，加到订单表中
		List<ShoppingCar> shops = ser.find2(users.getId());
		for(ShoppingCar c:shops) {
			ser2.add(users.getId(),c.getDishesName(),c.getNumber(),c.getPrice(),c.getNumber()*c.getPrice());
		}
		return "redirect:/orders/findall?userId="+users.getId();
	}
	
	
	
	
	
	
	
}
