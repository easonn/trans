package org.app.service;

import java.util.List;

import org.app.pojo.Corporation;

public interface ICorporationService {
    int deleteByPrimaryKey(String corpId);

    int insert(Corporation record);

    int insertSelective(Corporation record);

    Corporation selectByPrimaryKey(String corpId);

    int updateByPrimaryKeySelective(Corporation record);

    int updateByPrimaryKey(Corporation record);
    
    List<Corporation> dynamicLoad(Corporation record);
}
