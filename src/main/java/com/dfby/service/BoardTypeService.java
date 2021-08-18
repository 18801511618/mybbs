package com.dfby.service;

import com.dfby.entity.Boardtype;

import java.util.List;

public interface BoardTypeService {

	int insert(Boardtype record);

	boolean insertSelective(Boardtype record);
	boolean update(Boardtype record);

	boolean delete(int id);

	Boardtype selectByPrimaryKey(int id);

	List<Boardtype> selectall();

	
	

	
}
