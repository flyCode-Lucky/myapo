package com.sy.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 公告
 * @author Administrator
 *
 */
public class Notice implements Serializable {
	
	private int id;
	private String title;//标题
	private String content;//公告内容
	private Date notTime;//发布时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getNotTime() {
		return notTime;
	}
	public void setNotTime(Date notTime) {
		this.notTime = notTime;
	}
	public Notice(int id, String title, String content, Date notTime) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.notTime = notTime;
	}
	public Notice() {
		super();
	}
	
	

}
