package com.sy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.DishesDao;
import com.sy.pojo.Dishes;

@Service
public class DishesSI implements  DishesS{
	
	@Autowired
	private  DishesDao  dao;

	public List<Dishes> findall() {
		return dao.findall();
	}

	public void add(Dishes dishes) {
		// TODO Auto-generated method stub
		dao.add(dishes);
	}

	public void update(Dishes dishes) {
		// TODO Auto-generated method stub
		dao.update(dishes);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	public Dishes findbyid(int id) {
		// TODO Auto-generated method stub
		return dao.findbyid(id);
	}

}
