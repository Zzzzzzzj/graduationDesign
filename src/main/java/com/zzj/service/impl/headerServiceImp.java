package com.zzj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzj.mapper.ProducttypeMapper;
import com.zzj.model.Producttype;
import com.zzj.service.headerService;


@Service
public class headerServiceImp implements headerService {

	@Autowired
	ProducttypeMapper productTypeMapper;
	
	
	@Override
	public List<Producttype> AllType() {
		// TODO Auto-generated method stub
		List<Producttype> list = productTypeMapper.selectByExample(null);
		
		
		return list;
	}

}
