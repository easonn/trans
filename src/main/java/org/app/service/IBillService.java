package org.app.service;

import java.util.List;

import org.app.pojo.Bill;

public interface IBillService {
    int deleteByPrimaryKey(Integer id);

    int insert(Bill record);

    int insertSelective(Bill record);

    Bill selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bill record);

    int updateByPrimaryKeyWithBLOBs(Bill record);

    int updateByPrimaryKey(Bill record);
    
    List<Bill> dynamicLoad(Bill record);

}
