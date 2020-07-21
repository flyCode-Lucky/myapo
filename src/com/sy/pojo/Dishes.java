package com.sy.pojo;

import java.io.Serializable;

/**
 * 菜品
 * @author Administrator
 *
 */
public class Dishes implements Serializable {
	
	private int id;
	private String dishesName;//菜品名称
	private String material;//菜品原料
	private double marketPrice;//市场价
	private double vipPrice;//会员价
	private int dishesTypeId;//菜品类型外键
	private String pic;//菜品图片
	private String desc;//说明
	
	private int  status;
	
	//配置1对1关联关系
	private  DishesType  dishesType;
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

	
	
	public DishesType getDishesType() {
		return dishesType;
	}
	public void setDishesType(DishesType dishesType) {
		this.dishesType = dishesType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDishesName() {
		return dishesName;
	}
	public void setDishesName(String dishesName) {
		this.dishesName = dishesName;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public double getMarketPrice() {
		return marketPrice;
	}
	public void setMarketPrice(double marketPrice) {
		this.marketPrice = marketPrice;
	}
	public double getVipPrice() {
		return vipPrice;
	}
	public void setVipPrice(double vipPrice) {
		this.vipPrice = vipPrice;
	}
	public int getDishesTypeId() {
		return dishesTypeId;
	}
	public void setDishesTypeId(int dishesTypeId) {
		this.dishesTypeId = dishesTypeId;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Dishes(int id, String dishesName, String material, double marketPrice, double vipPrice, int dishesTypeId,
			String pic, String desc) {
		super();
		this.id = id;
		this.dishesName = dishesName;
		this.material = material;
		this.marketPrice = marketPrice;
		this.vipPrice = vipPrice;
		this.dishesTypeId = dishesTypeId;
		this.pic = pic;
		this.desc = desc;
	}
	public Dishes() {
		super();
	}
	
	
	
	

}
