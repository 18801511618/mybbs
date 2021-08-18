package com.dfby.service;

import com.dfby.entity.User;

import java.util.List;

public interface UserService {

	boolean insert(User record);

	boolean insertSelective(User record);


	//    //更新Book
	boolean update(User record);
	//
//    //更新Book
//    int updateSelective(Book record);
//
//    //根据id删除一本Book
	boolean delete(int id);


	//根据id查询,返回一本Book
	User selectByPrimaryKey(int id);

	//查询全部Book,返回list集合
	List<User> selectall();

	User checkUser(String uname, String upass);

	
	

	
}
