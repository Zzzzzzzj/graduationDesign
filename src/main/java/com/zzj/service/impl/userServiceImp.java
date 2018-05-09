package com.zzj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzj.mapper.UserMapper;
import com.zzj.model.User;
import com.zzj.model.UserExample;
import com.zzj.service.userService;


@Service
public class userServiceImp implements userService {

	@Autowired
	UserMapper userMapper;
	
	
	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
	
			user.setAuthority(1);
			userMapper.insertUUID(user);
		
		return true;
	}

	@Override
	public boolean findUser(User user) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		UserExample.Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(user.getUsername());
		criteria.andPasswordEqualTo(user.getPassword());
		
		List<User> list = userMapper.selectByExample(example);
		System.out.println(list);
		if(list.size()==0){
			System.out.println("aa");
			return false;
		}
		else {
			for (User user2 : list) {
				System.out.println(user2);
			}
			
		}
		
		return true;
	}

	@Override
	public List<User> AllUser() {
		// TODO Auto-generated method stub
		List<User> list = userMapper.selectByExample(null);
		
		
		
		return list;
	}

	@Override
	public User selectUser(User user) {
		UserExample example=new UserExample();
		UserExample.Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(user.getUsername());
		criteria.andPasswordEqualTo(user.getPassword());

		List<User> list = userMapper.selectByExample(example);
		System.out.println(list);
		if (list.size()>0){
			User resultuser=list.get(0);
			return resultuser;
		}


		return null;
	}

}
