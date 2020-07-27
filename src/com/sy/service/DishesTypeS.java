package com.sy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sy.pojo.DishesType;

public interface DishesTypeS {

	public List<DishesType> findall();
	
	public void update(DishesType type);
	
	public void add(DishesType type);
	
	public void delete(int id);
}
