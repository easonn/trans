package org.app.dao;

import org.app.pojo.Personinfo;

public interface PersoninfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Personinfo record);

    int insertSelective(Personinfo record);

    Personinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Personinfo record);

    int updateByPrimaryKey(Personinfo record);
}