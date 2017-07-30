package org.app.dao;

import java.util.List;

import org.app.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    User selectByName(String name);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User validationUser(User record);

	int getMaxId();

	List<User> SelectByRoleId(int roleId);
	
	List<User> selectByAdmin();
}