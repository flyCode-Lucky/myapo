package com.sy.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.pojo.AdminInfo;
import com.sy.service.AdminS;

import sun.print.resources.serviceui;

@Controller
@RequestMapping("/admin")
public class AdminC {
	//http://localhost:8080/myapo/admin/login
	
	@Autowired AdminS ser;
	
	@RequestMapping("/login")
	public String login(String loginName,String password,HttpServletRequest request) {
		
		AdminInfo admin = ser.login(loginName, password);
		//获取session(服务器不关就在)
		HttpSession session = request.getSession();
		if(admin!=null) {
			//登陆成功main.jsp
			session.setAttribute("admin", admin);
			return "main";//在ssm-servlet.xml配置了前后缀==/view/pages/main.jsp
		}
		//登陆失败
		session.setAttribute("msg", "用户名或者密码错误！");
		return "login";
	}
	
	@RequestMapping("/logout")
	//@RequestMapping(value=("/logout")) --还可以这样写，加，可以写多个
	public String logout(HttpServletRequest request) {
		//销毁session
		HttpSession session = request.getSession();
		//采用迭代器模式处理
		Enumeration<String> attributeName =session.getAttributeNames();
		while(attributeName.hasMoreElements()) {
			String name =attributeName.nextElement();
			session.removeAttribute(name);
		}
		return "login";
	}
	
	@RequestMapping("/updatePassword")
	public String updatePassword(String newPassword,String loginName,String password,Model m) {
			
		if(ser.updatePassword(newPassword, loginName, password)) {
			//修改成功,提示信息
			JOptionPane.showMessageDialog(null, "密码修改成功，请去重新登陆！");			
			return "login";//返回登陆页面
			
		}else {
			//修改失败			
			m.addAttribute("msg1", "修改密码失败，请重试！");
			return "change-password";
		}
		
		
		
	}
	
}
