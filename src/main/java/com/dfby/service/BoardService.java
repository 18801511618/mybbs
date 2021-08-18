package com.dfby.service;

import com.dfby.entity.Board;

import java.util.List;

public interface BoardService {

	int insert(Board record);

	boolean insertSelective(Board record);
	boolean update(Board record);

	boolean delete(int id);

	Board selectByPrimaryKey(int id);

	List<Board> selectall();

	
	

	
}
