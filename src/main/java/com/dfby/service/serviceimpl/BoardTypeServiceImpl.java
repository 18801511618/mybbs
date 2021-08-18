package com.dfby.service.serviceimpl;


import com.dfby.dao.BoardtypeMapper;
import com.dfby.entity.Boardtype;
import com.dfby.service.BoardTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

;

@Service
public class BoardTypeServiceImpl implements BoardTypeService {
	@Autowired
	private BoardtypeMapper boardtypeMapper;

	@Override
	public boolean insertSelective(Boardtype record) {
		return boardtypeMapper.insertSelective(record)>0?true:false;
	}

	@Override
	public Boardtype selectByPrimaryKey(int id) {
		return boardtypeMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean update(Boardtype record){
		return boardtypeMapper.updateByPrimaryKey(record)>0?true:false;
	}

	@Override
	public List<Boardtype> selectall() {
		return boardtypeMapper.selectall();
	}

	@Override
	public int insert(Boardtype record) {
		return boardtypeMapper.insert(record);
	}
	@Override
	public  boolean delete(int id){
		return boardtypeMapper.deleteByPrimaryKey(id)>0?true:false;
	}










	
}
