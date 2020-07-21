package com.sy.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 购物车
 * @author Administrator
 *
 */
public class ShoppingCar implements Serializable {
	
	private int id;
	private int userId;//用户外键
	private String dishesName;//菜品名称
	private int number;//数量
	private double price;//单价
	private Date shoppingTime;//购买日期
	
	
	//配置1对1关系
	private  Users  users;
	
	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getDishesName() {
		return dishesName;
	}
	public void setDishesName(String dishesName) {
		this.dishesName = dishesName;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Date getShoppingTime() {
		return shoppingTime;
	}
	public void setShoppingTime(Date shoppingTime) {
		this.shoppingTime = shoppingTime;
	}
	public ShoppingCar(int id, int userId, String dishesName, int number, double price, Date shoppingTime) {
		super();
		this.id = id;
		this.userId = userId;
		this.dishesName = dishesName;
		this.number = number;
		this.price = price;
		this.shoppingTime = shoppingTime;
	}
	public ShoppingCar() {
		super();
	}
	
	

}
