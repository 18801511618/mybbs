package com.dfby.dao;

import com.dfby.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    int insert(User record);

    int insertSelective(User record);


    //    //更新Book
    int update(User record);
    //
//    //更新Book
//    int updateSelective(Book record);
//
//    //根据id删除一本Book
    int delete(int id);


    //根据id查询,返回一本Book
    User selectByPrimaryKey(int id);

    //查询全部Book,返回list集合
    List<User> selectAll();

}