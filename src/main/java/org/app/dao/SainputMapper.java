package org.app.dao;

import java.util.List;

import org.app.pojo.Sainput;

public interface SainputMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sainput record);

    int insertSelective(Sainput record);

    Sainput selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sainput record);

    int updateByPrimaryKey(Sainput record);
    
    List<Sainput> dynamicLoad(Sainput record);

    int getMaxId();

    //Sainput selectByNo(String sainputNo);
}