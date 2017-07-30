package org.app.service;

import java.util.List;

import org.app.pojo.Income;

public interface IIncomeService {
    int deleteByPrimaryKey(Integer id);

    int insert(Income record);

    int insertSelective(Income record);

    Income selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Income record);

    int updateByPrimaryKeyWithBLOBs(Income record);

    int updateByPrimaryKey(Income record);

    List<Income> dynamicLoad(Income record);
}
