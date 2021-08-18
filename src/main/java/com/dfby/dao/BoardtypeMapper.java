package com.dfby.dao;

import com.dfby.entity.Boardtype;

import java.util.List;

public interface BoardtypeMapper {
    int deleteByPrimaryKey(Integer boardtypeid);

    int insert(Boardtype record);

    int insertSelective(Boardtype record);

    Boardtype selectByPrimaryKey(Integer boardtypeid);

    int updateByPrimaryKeySelective(Boardtype record);

    int updateByPrimaryKey(Boardtype record);
    List<Boardtype> selectall();
}