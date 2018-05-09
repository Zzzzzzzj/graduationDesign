package com.zzj.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.zzj.model.Producttype;
import com.zzj.service.headerService;

@Controller
@RequestMapping("/header")
public class headerController {

	@Autowired
	headerService headerservice;
	
	
	@RequestMapping("/producttype")
	public void productType(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/json;charset=utf-8");
		List<Producttype> allType = headerservice.AllType();
		Gson gson=new Gson();
		String json=gson.toJson(allType);
		System.out.println(json);
		if(json!=null){
			
			try {
				response.getWriter().write(json);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			};
		}
		
		
	}
	
	
}
