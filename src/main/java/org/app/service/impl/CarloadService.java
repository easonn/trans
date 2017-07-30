package org.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.app.dao.CarloadMapper;
import org.app.pojo.Carload;
import org.app.service.ICarloadService;
import org.springframework.stereotype.Service;

@Service
public class CarloadService implements ICarloadService {

    @Resource
    private CarloadMapper carloadMapper;

    public int deleteByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return carloadMapper.deleteByPrimaryKey(id);
    }

    public int insert(Carload record) {
        record.setId(carloadMapper.getMaxId() + 1);
        return carloadMapper.insert(record);
    }

    public int insertSelective(Carload record) {
        // TODO Auto-generated method stub
        record.setId(carloadMapper.getMaxId() + 1);
        return carloadMapper.insertSelective(record);
    }

    public Carload selectByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return carloadMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Carload record) {
        // TODO Auto-generated method stub
        return carloadMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKeyWithBLOBs(Carload record) {
        // TODO Auto-generated method stub
        return carloadMapper.updateByPrimaryKeyWithBLOBs(record);
    }

    public int updateByPrimaryKey(Carload record) {
        // TODO Auto-generated method stub
        return carloadMapper.updateByPrimaryKey(record);
    }

    public int getMaxId() {
        // TODO Auto-generated method stub
        return carloadMapper.getMaxId();
    }

    public List<Carload> dynamicLoad(Carload record) {
        // TODO Auto-generated method stub
        return carloadMapper.dynamicLoad(record);
    }

}
