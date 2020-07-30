package com.sy.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.pojo.AdminInfo;
import com.sy.service.AdminS;


@Controller
@RequestMapping("/admin")
public class AdminC {
	
	@Autowired AdminS ser;
	
	@RequestMapping("/login")
	public String login(String loginName,String password,HttpServletRequest request) {
		
		AdminInfo admin = ser.login(loginName, password);
		HttpSession session = request.getSession();
		//session.setAttribute("msg",ull);
		if(admin!=null) {
			//ok
			session.setAttribute("admin", admin);
			
			return "main";
		}
		//false
		session.setAttribute("msg", "用户名或者密码错误！");
		return "login";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Enumeration<String> attributeName = session.getAttributeNames();
		while(attributeName.hasMoreElements()) {
			String name = attributeName.nextElement();
			session.removeAttribute(name);
		}
		return "login";
	}

	@RequestMapping("/update")
	public String update(String newPassword,String rpassword,String password,HttpServletRequest request,Model m) {
		HttpSession session = request.getSession();
		AdminInfo adminInfo = (AdminInfo) session.getAttribute("admin");
		String loginName = adminInfo.getLoginName();
		
		if(ser.update(newPassword, loginName, password)&&newPassword.equals(rpassword)) {
			//修改成功
			return "login";
		}else {
			//修改失败	
			m.addAttribute("msg1", "修改失败！");
			return "change-password";
		}
		
	}
	
}
