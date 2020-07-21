package com.sy.pojo;

import java.io.Serializable;

/**
 * 菜品分类
 * @author Administrator
 *
 */
public class DishesType implements Serializable {
	
	private int id;
	private String typeName;//菜品类型名称
	private int status;//状态:0 删除   1  有效
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public DishesType(int id, String typeName, int status) {
		super();
		this.id = id;
		this.typeName = typeName;
		this.status = status;
	}
	public DishesType() {
		super();
	}
	
	

}
