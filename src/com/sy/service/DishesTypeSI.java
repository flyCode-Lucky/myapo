package com.sy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.DishesTypeDao;
import com.sy.pojo.DishesType;

import sun.print.resources.serviceui;

@Service
public class DishesTypeSI implements DishesTypeS {

	@Autowired
	private DishesTypeDao dao;
	
	public List<DishesType> findall() {	
		return dao.findall();
	}
	
	public void update(DishesType type) {
		dao.update(type);	
	}

	public void add(DishesType type) {
		dao.add(type);
	}

	public void delete(int id) {
		dao.delete(id);
	}
	
	
}
