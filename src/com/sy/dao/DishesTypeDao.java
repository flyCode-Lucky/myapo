package com.sy.dao;

import java.util.List;

import com.sy.pojo.DishesType;

public interface DishesTypeDao {

	public List<DishesType> findall();
	
	
	public void update(DishesType type);//自动装箱
	
	public void add(DishesType type);
	
	public void delete(int id);
	
}
