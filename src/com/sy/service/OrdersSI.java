package com.sy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.OrdersDao;
import com.sy.pojo.Orders;
import com.sy.util.PagerModel;

@Service
public class OrdersSI implements OrdersS{

	@Autowired
	private OrdersDao dao;
	
	public  PagerModel<Orders> findall(PagerModel<Orders> pm) {
		pm.setDatas(dao.findall(pm.getPagestart(), pm.getPagesize(),pm.getUserName(),pm.getDishesName(),pm.getOrderTime(),pm.getUserId()));
		pm.setTotalrecode(dao.gettotal(pm.getUserName(),pm.getDishesName(),pm.getOrderTime()));
		return pm;
	}

	public void delete(int userId) {
		dao.delete(userId);
	}

	public void add(int userId, String dishesName, int number, double price, double numPrice) {
		dao.add(userId, dishesName, number, price, numPrice);
	}

	

}
