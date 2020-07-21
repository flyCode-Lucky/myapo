package com.sy.pojo;

import java.io.Serializable;
import java.util.Date;


/**
 * 订单
 * @author Administrator
 *
 */
public class Orders implements Serializable {
	
	private int id;
	private int userId;//用户外键
	private String dishesName;//菜品名称
	private int number;//数量
	private double price;//单价
	private double numPrice;//合计
	private Date orderTime;//下单时间
	private int isDelivery;//是否派送:1  是   0  否
	private int status;//订单状态:0  已取消  1  确认   2  未操作
	
	
	//配置1对1关联关系
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
	public double getNumPrice() {
		return numPrice;
	}
	public void setNumPrice(double numPrice) {
		this.numPrice = numPrice;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public int getIsDelivery() {
		return isDelivery;
	}
	public void setIsDelivery(int isDelivery) {
		this.isDelivery = isDelivery;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Orders(int id, int userId, String dishesName, int number, double price, double numPrice, Date orderTime,
			int isDelivery, int status) {
		super();
		this.id = id;
		this.userId = userId;
		this.dishesName = dishesName;
		this.number = number;
		this.price = price;
		this.numPrice = numPrice;
		this.orderTime = orderTime;
		this.isDelivery = isDelivery;
		this.status = status;
	}
	public Orders() {
		super();
	}
	public Orders(int userId, String dishesName, int number, double price, double numPrice, 
			int isDelivery) {
		super();
		this.userId = userId;
		this.dishesName = dishesName;
		this.number = number;
		this.price = price;
		this.numPrice = numPrice;
		this.isDelivery = isDelivery;
	}
	
	@Override
	public String toString() {
		return "Orders [id=" + id + ", userId=" + userId + ", dishesName=" + dishesName + ", number=" + number
				+ ", price=" + price + ", numPrice=" + numPrice + ", orderTime=" + orderTime + ", isDelivery="
				+ isDelivery + ", status=" + status + ", users=" + users + "]";
	}
	
	

}
