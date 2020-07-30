package com.sy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.pojo.AdminInfo;
import com.sy.pojo.Users;
import com.sy.service.UsersS;

@Controller
@RequestMapping("/users")
public class UsersC {
	
	@Autowired
	private UsersS ser;

	@RequestMapping("/login")
	public String login(String loginName, String password,HttpServletRequest request) {
		Users users = ser.login(loginName, password);
		HttpSession session = request.getSession();
		if(users!=null) {
			
			session.setAttribute("users", users);
			
			return "redirect:/Dishes/findall?userId="+users.getId();
		}
		//false
		session.setAttribute("msg", "用户名或者密码错误！");
		return "web/pages/login";
	}
}
