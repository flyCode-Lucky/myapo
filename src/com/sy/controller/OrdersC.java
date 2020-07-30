package com.sy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.Session;
import com.sy.pojo.Orders;
import com.sy.service.OrdersS;
import com.sy.util.PagerModel;

@Controller
@RequestMapping("/orders")
public class OrdersC {
	
	@Autowired
	private OrdersS ser;

	@RequestMapping("/findall")
	public String findall(Model m,PagerModel<Orders> pm ,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		String userName = pm.getUserName();
		//首次进来
		if(userName == null && session.getAttribute("userName") == null) {
			userName="";
		}
		//翻页
		if(userName == null && session.getAttribute("userName") != null) {
			userName=(String) session.getAttribute("userName");
		}
		session.setAttribute("userName", userName);
		pm.setUserName(userName);
		
		String dishesName = pm.getDishesName();
		//首次进来
		if(dishesName == null && session.getAttribute("dishesName") == null) {
			dishesName="";
		}
		//翻页
		if(dishesName == null && session.getAttribute("dishesName") != null) {
			dishesName=(String) session.getAttribute("dishesName");
		}
		session.setAttribute("dishesName", dishesName);
		pm.setDishesName(dishesName);
		
		String orderTime = pm.getOrderTime();
		//首次进来
		if(orderTime == null && session.getAttribute("orderTime") == null) {
			orderTime="";
		}
		//翻页
		if(orderTime == null && session.getAttribute("orderTime") != null) {
			orderTime=(String) session.getAttribute("orderTime");
		}
		session.setAttribute("orderTime", orderTime);
		pm.setOrderTime(orderTime);
		
		pm= ser.findall(pm);
		m.addAttribute("pm",pm);
		return "orders-list";
	}
}
