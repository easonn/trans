package org.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.app.dao.SummaryMapper;
import org.app.pojo.Summary;
import org.app.pojo.SummaryWithBLOBs;
import org.app.service.ISummaryService;
import org.springframework.stereotype.Service;

@Service
public class SummaryService implements ISummaryService {

    @Resource
    private SummaryMapper summaryMapper;

    public int deleteByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return summaryMapper.deleteByPrimaryKey(id);
    }

    public int insert(SummaryWithBLOBs record) {
        record.setId(summaryMapper.getMaxId() + 1);
        return summaryMapper.insert(record);
    }

    public int insertSelective(SummaryWithBLOBs record) {
        // TODO Auto-generated method stub
        return summaryMapper.insertSelective(record);
    }

    public SummaryWithBLOBs selectByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return summaryMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(SummaryWithBLOBs record) {
        // TODO Auto-generated method stub
        return summaryMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKeyWithBLOBs(SummaryWithBLOBs record) {
        // TODO Auto-generated method stub
        return summaryMapper.updateByPrimaryKeyWithBLOBs(record);
    }

    public int updateByPrimaryKey(Summary record) {
        // TODO Auto-generated method stub
        return summaryMapper.updateByPrimaryKey(record);
    }

    public List<SummaryWithBLOBs> dynamicLoad(SummaryWithBLOBs record) {
        // TODO Auto-generated method stub
        return summaryMapper.dynamicLoad(record);
    }

    public int getMaxId() {
        // TODO Auto-generated method stub
        return summaryMapper.getMaxId();
    }

}
