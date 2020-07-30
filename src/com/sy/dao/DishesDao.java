package com.sy.dao;

import java.util.List;

import com.sy.pojo.Dishes;

public interface DishesDao {
	public List<Dishes>  findall();
	
	public  void  add(Dishes  dishes);
	
	public  void  update(Dishes  dishes);
	
	public  void  delete(int id);
	
	public  Dishes  findbyid(int  id);
}
