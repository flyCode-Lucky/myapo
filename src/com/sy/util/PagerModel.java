package com.sy.util;

import java.util.List;

public class PagerModel<T> {

	private int pagestart=0;
	private int pagesize=3;
	private int pageNo=1;
	private int totalrecode=0;
	private int totalpage=0;
	
	private List<T> datas;
	
	private String userName;
	private String dishesName;
	private String orderTime;
	
	private String userId="";
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getPagestart() {
		return pagestart=(pageNo-1)*pagesize;
	}
	public void setPagestart(int pagestart) {
		this.pagestart = pagestart;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalrecode() {
		return totalrecode;
	}
	public void setTotalrecode(int totalrecode) {
		this.totalrecode = totalrecode;
	}
	public int getTotalpage() {
		return totalpage=(totalrecode+pagesize-1)/pagesize;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public List<T> getDatas() {
		return datas;
	}
	public void setDatas(List<T> datas) {
		this.datas = datas;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getDishesName() {
		return dishesName;
	}
	public void setDishesName(String dishesName) {
		this.dishesName = dishesName;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	
	
			
	
}
