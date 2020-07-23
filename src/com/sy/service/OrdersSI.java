package com.sy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.OrdersDAo;
import com.sy.pojo.Orders;

@Service
public class OrdersSI implements OrdersS{
	@Autowired
	private OrdersDAo dAo;

	public List<Orders> findall(){
		return dAo.findall();
	}
}
