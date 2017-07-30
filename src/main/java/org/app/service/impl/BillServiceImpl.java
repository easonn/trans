package org.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.app.constant.SQLReturn;
import org.app.dao.BillMapper;
import org.app.pojo.Bill;
import org.app.service.IBillService;
import org.springframework.stereotype.Service;

@Service
public class BillServiceImpl implements IBillService {

    @Resource
    private BillMapper billMapper;

    public int deleteByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return billMapper.deleteByPrimaryKey(id);
    }

    public int insert(Bill record) {
        if (null != billMapper.selectByNo(record.getBillNo())) {
            return SQLReturn.DATA_EXIST;
        } else {
            record.setId(billMapper.getMaxId() + 1);
            return billMapper.insert(record);
        }
    }

    public int insertSelective(Bill record) {
        if (null != billMapper.selectByNo(record.getBillNo())) {
            return SQLReturn.DATA_EXIST;
        } else {
            record.setId(billMapper.getMaxId() + 1);
            return billMapper.insertSelective(record);
        }
    }

    public Bill selectByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return billMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Bill record) {
        // TODO Auto-generated methosqlReturnd stub
        return billMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKeyWithBLOBs(Bill record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public int updateByPrimaryKey(Bill record) {
        // TODO Auto-generated method stub
        return 0;
    }

    public List<Bill> dynamicLoad(Bill record) {
        // TODO Auto-generated method stub
        return billMapper.dynamicLoad(record);
    }

}
