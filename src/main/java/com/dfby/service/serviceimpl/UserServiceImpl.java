package com.dfby.service.serviceimpl;

import com.dfby.dao.UserMapper;
import com.dfby.entity.User;
import com.dfby.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;

	public User checkUser(String uname,String upass) {
		User user = null;
		List<User> allUser = userMapper.selectAll();
		for (User u : allUser) {
			if (uname.equals(u.getUname()) && upass.equals(u.getUpass())) {
				user = u;
				break;
			}
		}
		return user;
	}
	@Override
	public boolean insert(User record) {
		return userMapper.insert(record)>0?true:false;
	}

	@Override
	public boolean insertSelective(User record) {
		return userMapper.insertSelective(record)>0?true:false;
	}

	@Override
	public User selectByPrimaryKey(int id) {
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean update(User record){
		return userMapper.update(record)>0?true:false;
	}

	@Override
	public List<User> selectall() {
		return userMapper.selectAll();
	}


	@Override
	public  boolean delete(int id){
		return userMapper.delete(id)>0?true:false;
	}




	public List<User> findListByTypeId(int id){
		List<User> allList= (List<User>) userMapper.selectByPrimaryKey(id);
		List<User> targetList=new ArrayList<>();
		for(User user:allList) {
			if(user.getUid()==id) {
				targetList.add(user);
			}
		}
		return targetList;
	}





	
}
