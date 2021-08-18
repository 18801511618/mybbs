package com.dfby.dao;

import com.dfby.entity.Board;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BoardMapper {
    int deleteByPrimaryKey(Integer boardid);

    int insert(Board record);

    int insertSelective(Board record);

    Board selectByPrimaryKey(Integer boardid);

    int updateByPrimaryKeySelective(Board record);

    int updateByPrimaryKey(Board record);
    List<Board> selectall();
}