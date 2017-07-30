package org.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.app.dao.IncomeMapper;
import org.app.pojo.Income;
import org.app.service.IIncomeService;
import org.springframework.stereotype.Service;

@Service
public class IncomeService implements IIncomeService {

    @Resource
    private IncomeMapper incomeMapper;

    public int deleteByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return incomeMapper.deleteByPrimaryKey(id);
    }

    public int insert(Income record) {
        // TODO Auto-generated method stub
        record.setId(incomeMapper.getMaxId() + 1);
        return incomeMapper.insert(record);
    }

    public int insertSelective(Income record) {
        // TODO Auto-generated method stub
        return incomeMapper.insertSelective(record);
    }

    public Income selectByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return incomeMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Income record) {
        // TODO Auto-generated method stub
        return incomeMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKeyWithBLOBs(Income record) {
        // TODO Auto-generated method stub
        return incomeMapper.updateByPrimaryKeyWithBLOBs(record);
    }

    public int updateByPrimaryKey(Income record) {
        // TODO Auto-generated method stub
        return incomeMapper.updateByPrimaryKey(record);
    }

    public List<Income> dynamicLoad(Income record) {
        // TODO Auto-generated method stub
        return incomeMapper.dynamicLoad(record);
    }

}
