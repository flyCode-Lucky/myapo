package com.sy.pojo;

import java.io.Serializable;

/**
 * 用户
 * @author Administrator
 *
 */
public class Users implements Serializable {
	
	private int id;
	private String loginName;//登录名
	private String password;//密码
	private String userName;//真实姓名
	private int sex;//性别: 1  男   0  女
	private int age;//年龄
	private String idCard;//身份证号
	private String address;//家庭住址
	private String phone;//电话号码
	private String email;//邮箱
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Users(int id, String loginName, String password, String userName, int sex, int age, String idCard,
			String address, String phone, String email) {
		super();
		this.id = id;
		this.loginName = loginName;
		this.password = password;
		this.userName = userName;
		this.sex = sex;
		this.age = age;
		this.idCard = idCard;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}
	public Users() {
		super();
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", loginName=" + loginName + ", password=" + password + ", userName=" + userName
				+ ", sex=" + sex + ", age=" + age + ", idCard=" + idCard + ", address=" + address + ", phone=" + phone
				+ ", email=" + email + "]";
	}
	
	

}
