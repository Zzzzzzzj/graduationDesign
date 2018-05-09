package com.zzj.service.impl;

import com.zzj.jedis.JedisClient;
import com.zzj.mapper.ProductMapper;
import com.zzj.model.Product;
import com.zzj.model.ProductExample;
import com.zzj.service.ContentService;
import com.zzj.util.JsonUtils;
import com.zzj.util.StrKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentServiceImp implements ContentService {

    @Autowired
    private ProductMapper mapper;

    @Autowired
    private JedisClient jedisClient;

    @Override
    public List<Product> listContentsByCno(double cno) {
    try{
        String listJson=jedisClient.hget("CONTENT_LIST",cno + "");
        if (StrKit.notBlank(listJson)){
            List<Product> contentList= JsonUtils.jsonToList(listJson,Product.class);
            return contentList;
        }

    }catch (Exception e){
        e.printStackTrace();
    }
        ProductExample example=new ProductExample();
        ProductExample.Criteria criteria=example.createCriteria();
        criteria.andCnoEqualTo(cno);
        List<Product> contentList=mapper.selectByExample(example);

        try{
            jedisClient.hset("CONTENT_LIST",cno + "",JsonUtils.objectToJson(contentList));
        }catch (Exception e){
            e.printStackTrace();
        }

    return contentList;
    }
}
