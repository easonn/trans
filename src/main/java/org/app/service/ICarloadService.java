package org.app.service;

import java.util.List;

import org.app.pojo.Carload;

public interface ICarloadService {
    int deleteByPrimaryKey(Integer id);

    int insert(Carload record);

    int insertSelective(Carload record);

    Carload selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Carload record);

    int updateByPrimaryKeyWithBLOBs(Carload record);

    int updateByPrimaryKey(Carload record);

    int getMaxId();

    List<Carload> dynamicLoad(Carload record);
}
