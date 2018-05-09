package com.zzj.service;

import java.util.List;

import com.zzj.model.User;

public interface userService {

	boolean addUser(User user);
	
	boolean findUser(User user);
	
	List<User> AllUser();

	User selectUser(User user);
}
