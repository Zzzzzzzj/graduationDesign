package com.zzj.service.impl;

import java.util.List;

import com.zzj.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzj.model.Product;
import com.zzj.service.productService;

@Service
public class productServiceImp implements productService {

    @Autowired
    ProductMapper productMapper;


    @Override
    public List<Product> selectProductByType(int cno) {
        // TODO Auto-generated method stub
        List<Product> list = productMapper.selectByType(cno);

        return list;
    }

    @Override
    public Product selectByKey(double pid) {
        Product product = new Product();
        try {
            product = productMapper.selectByPrimaryKey(pid);

        } catch (Exception e) {
            e.printStackTrace();
        }


        return product;
    }

}
