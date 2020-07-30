package com.sy.service;

import java.util.List;

import com.sy.pojo.Dishes;

public interface DishesS {
	public List<Dishes>  findall();
	
	public  void  add(Dishes  dishes);
	
	public  void  update(Dishes  dishes);
	
	public  void  delete(int id);
	
	public  Dishes  findbyid(int  id);
}
