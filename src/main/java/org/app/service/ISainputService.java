package org.app.service;

import java.util.List;

import org.app.pojo.Sainput;

public interface ISainputService {
    int deleteByPrimaryKey(Integer id);

    int insert(Sainput record);

    int insertSelective(Sainput record);

    Sainput selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sainput record);

    int updateByPrimaryKey(Sainput record);

    List<Sainput> dynamicLoad(Sainput record);

    int getMaxId();
    
}
