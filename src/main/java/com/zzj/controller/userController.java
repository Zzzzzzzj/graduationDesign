package com.zzj.controller;



import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.zzj.model.User;
import com.zzj.service.userService;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class userController {
	
	@Autowired
	userService userservice;
	
	@RequestMapping("/resign")
	public String addUser(User user,Model model,HttpSession session){
		boolean resignflag = userservice.addUser(user);
		model.addAttribute("type","注册");
		model.addAttribute("typec","resign");
		if(resignflag==true){
			session.setAttribute("user", user);
			return "success";
		}
		return "fail";
	}
	
	@RequestMapping("/login")
	public String findUser(User user,Model model,HttpSession session,String remember){
		boolean flag = userservice.findUser(user);
		model.addAttribute("type","登陆");
		model.addAttribute("typec","login");
		String name=user.getUsername();
		String pw=user.getPassword();
		
		System.out.println(remember);
		if ("1".equals(remember)) {
			System.out.println(name);
			session.setAttribute("reUsername",name);
			session.setAttribute("rePassword",pw);
			System.out.println("+++++");
		}
		else {
			session.removeAttribute("reUsername");
			session.removeAttribute("rePassword");
		}
		if(flag==true){
			User selectUser = userservice.selectUser(user);


			session.setAttribute("user", selectUser);




			return "success";
		}
		
		return "fail";
	}
	
	@RequestMapping("/quit")
	public String quit(HttpSession session,HttpServletRequest request,HttpServletResponse response,Model model){
		//注销  先把session销毁
				//request.getSession().invalidate();//销毁session
				//或者使用
				//autoLogin自动登录的cookie
				Cookie[] cookies = request.getCookies();
				request.getSession().removeAttribute("user");
				request.getSession().removeAttribute("auth");
				if(cookies!=null){
					for(Cookie c:cookies){
						
						if("autoLogin".equals(c.getName())){
							c.setMaxAge(0);
							response.addCookie(c);
							break;
						}
					}
					
					
				}
		
//		model.addAttribute("msg","退出成功");
		
		
		return "index";
	}
	
	@RequestMapping("/AllUser")
	public void AllUser(HttpServletResponse response ){
		List<User> allUser = userservice.AllUser();
		Gson gson = new Gson();
		String json = gson.toJson(allUser);
		if (json!=null) {
			try {
				response.getWriter().write(json);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
