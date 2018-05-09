package com.zzj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzj.model.Product;
import com.zzj.service.productService;

@Controller
@RequestMapping("/product")
public class productController {
	
	
	@Autowired
	productService productService;
	
	@RequestMapping("/context")
	public String productContext(HttpServletRequest request,HttpServletResponse response,
			@RequestParam(defaultValue="8")Integer pageSize,
			@RequestParam(defaultValue="1")Integer currentPage,
			Model model
			){
		String cno1 = request.getParameter("cno");
		System.out.println(cno1);
		int cno = Integer.parseInt(cno1);
		System.out.println(cno);
		Page<Object> page = PageHelper.startPage(currentPage,pageSize);
		
		
		List<Product> list = productService.selectProductByType(cno);
		
		
		PageInfo<Product> pageInfo = new PageInfo<>(list,3);
		int[] nums = pageInfo.getNavigatepageNums();
		model.addAttribute("nums",nums);
		model.addAttribute("list",list);
		model.addAttribute("page",pageInfo);
		model.addAttribute("cno",cno);
		System.out.println(list);
		return "productContext";
	}


	@RequestMapping("/productShow")
	public String productShow(HttpServletRequest request, Model model){
		Product product=new Product();
		String key1 =request.getParameter("pid");
		double key2=Double.parseDouble(key1);
		try{

			product= productService.selectByKey(key2);
			model.addAttribute("product",product);
		}catch (Exception e){
			e.printStackTrace();
		}

		return "productShow";
	}
	
}
