package org.app.dao;

import java.util.List;

import org.app.pojo.Income;

public interface IncomeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Income record);

    int insertSelective(Income record);

    Income selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Income record);

    int updateByPrimaryKeyWithBLOBs(Income record);

    int updateByPrimaryKey(Income record);

    int getMaxId();

    List<Income> dynamicLoad(Income record);
}