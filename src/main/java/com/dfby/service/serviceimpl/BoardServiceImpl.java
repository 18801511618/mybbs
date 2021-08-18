package com.dfby.service.serviceimpl;


import com.dfby.dao.BoardMapper;
import com.dfby.entity.Board;
import com.dfby.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper boardMapper;

	@Override
	public boolean insertSelective(Board record) {
		return boardMapper.insertSelective(record)>0?true:false;
	}

	@Override
	public Board selectByPrimaryKey(int id) {
		return boardMapper.selectByPrimaryKey(id);
	}

	@Override
	public boolean update(Board record){
		return boardMapper.updateByPrimaryKey(record)>0?true:false;
	}

	@Override
	public List<Board> selectall() {
		return boardMapper.selectall();
	}

	@Override
	public int insert(Board record) {
		return boardMapper.insert(record);
	}
	@Override
	public  boolean delete(int id){
		return boardMapper.deleteByPrimaryKey(id)>0?true:false;
	}










	
}
