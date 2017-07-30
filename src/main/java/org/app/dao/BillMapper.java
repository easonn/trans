package org.app.dao;

import java.util.List;

import org.app.pojo.Bill;

public interface BillMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Bill record);

    int insertSelective(Bill record);

    Bill selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Bill record);

    int updateByPrimaryKeyWithBLOBs(Bill record);

    int updateByPrimaryKey(Bill record);

    List<Bill> dynamicLoad(Bill record);

    int getMaxId();

    Bill selectByNo(String billNo);
}