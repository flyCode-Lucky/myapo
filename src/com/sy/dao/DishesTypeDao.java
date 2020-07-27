package com.sy.dao;

import java.util.List;


import com.sy.pojo.DishesType;

public interface DishesTypeDao {

	public List<DishesType> findall();
	
	public void update(DishesType type);
	
	public void add(DishesType type);
	
	public void delete(int id);
}
