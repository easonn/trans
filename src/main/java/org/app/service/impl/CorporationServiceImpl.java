package org.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.app.dao.CorporationMapper;
import org.app.pojo.Corporation;
import org.app.service.ICorporationService;
import org.app.utils.StringTools;
import org.springframework.stereotype.Service;

@Service
public class CorporationServiceImpl implements ICorporationService {

    @Resource
    private CorporationMapper corporationMapper;

    @Override
    public int deleteByPrimaryKey(String corpId) {
        // TODO Auto-generated method stub
        return corporationMapper.deleteByPrimaryKey(corpId);
    }

    @Override
    public int insert(Corporation record) {
        // TODO Auto-generated method stub
        record.setCorpId(StringTools.string2MD5(record.getCorpName()).substring(0, 24));
        return corporationMapper.insert(record);
    }

    @Override
    public int insertSelective(Corporation record) {
        // TODO Auto-generated method stub
        return corporationMapper.insertSelective(record);
    }

    @Override
    public Corporation selectByPrimaryKey(String corpId) {
        // TODO Auto-generated method stub
        return corporationMapper.selectByPrimaryKey(corpId);
    }

    @Override
    public int updateByPrimaryKeySelective(Corporation record) {
        // TODO Auto-generated method stub
        return corporationMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Corporation record) {
        // TODO Auto-generated method stub
        return corporationMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Corporation> dynamicLoad(Corporation record) {
        // TODO Auto-generated method stub
        return corporationMapper.dynamicLoad(record);
    }

}
