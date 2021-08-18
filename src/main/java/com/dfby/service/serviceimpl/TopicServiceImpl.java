package com.dfby.service.serviceimpl;


import com.dfby.dao.TopicMapper;
import com.dfby.entity.Topic;
import com.dfby.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

;

@Service
public class TopicServiceImpl implements TopicService {
	@Autowired
	private TopicMapper topicMapper;

	@Override
	public boolean insertSelective(Topic record) {
		return topicMapper.insertSelective(record)>0?true:false;
	}

	@Override
	public Topic selectByPrimaryKey(int id) {
		return topicMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean update(Topic record){
		return topicMapper.updateByPrimaryKey(record)>0?true:false;
	}

	@Override
	public List<Topic> selectall() {
		return topicMapper.selectall();
	}

	@Override
	public int insert(Topic record) {
		return topicMapper.insert(record);
	}
	@Override
	public  boolean delete(int id){
		return topicMapper.deleteByPrimaryKey(id)>0?true:false;
	}










	
}
