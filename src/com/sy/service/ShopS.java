package com.sy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sy.pojo.ShoppingCar;

public interface ShopS {

		//查这个菜是否存在
		public ShoppingCar find(@Param("userId") int userId,@Param("dishesName") String dishesName);
		
		//在的话就+1
		public void update(ShoppingCar shop);
		
		//不在的话就新增
		public void add(ShoppingCar car);
		
		public List<ShoppingCar> find2(int userId);
		
		public void delete(int id);
}
