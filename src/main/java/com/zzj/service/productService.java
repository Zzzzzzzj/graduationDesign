package com.zzj.service;

import java.util.List;

import com.zzj.model.Product;

public interface productService {
	
	List<Product> selectProductByType(int cno);
	
	Product selectByKey(double pid);
	
}
