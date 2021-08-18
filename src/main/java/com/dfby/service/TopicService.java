package com.dfby.service;

import com.dfby.entity.Topic;

import java.util.List;

public interface TopicService {

	int insert(Topic record);

	boolean insertSelective(Topic record);
	boolean update(Topic record);

	boolean delete(int id);

	Topic selectByPrimaryKey(int id);

	List<Topic> selectall();

	
	

	
}
