package org.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.app.dao.SainputMapper;
import org.app.pojo.Sainput;
import org.app.service.ISainputService;
import org.springframework.stereotype.Service;

@Service
public class SainputService implements ISainputService {

    @Resource
    private SainputMapper sainputMapper;

    public int deleteByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return sainputMapper.deleteByPrimaryKey(id);
    }

    public int insert(Sainput record) {
        // TODO Auto-generated method stub
        record.setId(sainputMapper.getMaxId() + 1);
        return sainputMapper.insert(record);
    }

    public int insertSelective(Sainput record) {
        // TODO Auto-generated method stub
        record.setId(sainputMapper.getMaxId() + 1);
        return sainputMapper.insertSelective(record);
    }

    public Sainput selectByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return sainputMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Sainput record) {
        // TODO Auto-generated method stub
        return sainputMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Sainput record) {
        // TODO Auto-generated method stub
        return sainputMapper.updateByPrimaryKey(record);
    }

    public List<Sainput> dynamicLoad(Sainput record) {
        // TODO Auto-generated method stub
        return sainputMapper.dynamicLoad(record);
    }

    public int getMaxId() {
        // TODO Auto-generated method stub
        return sainputMapper.getMaxId();
    }

}
