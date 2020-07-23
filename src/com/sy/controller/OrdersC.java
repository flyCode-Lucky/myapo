package com.sy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.pojo.Orders;
import com.sy.service.OrdersS;

@Controller
@RequestMapping("/orders")
public class OrdersC {
	
	@Autowired
	private OrdersS ser;
	
	@RequestMapping("/findall")
	public String findall(Model m) {
		List<Orders> orders = ser.findall();
		m.addAttribute("orders",orders);
		return "orders-list";
	}

}
