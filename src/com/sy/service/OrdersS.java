package com.sy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sy.pojo.Orders;
import com.sy.util.PagerModel;

public interface OrdersS {

	public PagerModel<Orders> findall(PagerModel<Orders> pm);

	public void delete(int userId);

	public void add(int userId,String dishesName,int number,double price,double numPrice);
}
