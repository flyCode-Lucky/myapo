package com.sy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.ShopDao;
import com.sy.pojo.ShoppingCar;

@Service
public class ShopSI implements ShopS{
	
	@Autowired
	private ShopDao dao;

	public ShoppingCar find(int userId, String dishesName) {
		return dao.find(userId, dishesName);
	}

	public void update(ShoppingCar shop) {
		dao.update(shop);
	}

	public void add(ShoppingCar car) {
		dao.add(car);
	}

	public List<ShoppingCar> find2(int userId) {
		return dao.find2(userId);
	}

	public void delete(int id) {
		dao.delete(id);
	}

}
