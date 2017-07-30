package org.app.service;

import java.util.List;

import org.app.pojo.Summary;
import org.app.pojo.SummaryWithBLOBs;

public interface ISummaryService {
    int deleteByPrimaryKey(Integer id);

    int insert(SummaryWithBLOBs record);

    int insertSelective(SummaryWithBLOBs record);

    SummaryWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SummaryWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(SummaryWithBLOBs record);

    int updateByPrimaryKey(Summary record);

    List<SummaryWithBLOBs> dynamicLoad(SummaryWithBLOBs record);

    int getMaxId();
}
