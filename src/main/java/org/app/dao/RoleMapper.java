package org.app.dao;

import org.app.pojo.Role;

public interface RoleMapper {
	int insert(Role record);

	int insertSelective(Role record);

	int selectRoleLevelByPrimaryKey(int id);

	Role selectByPrimaryKey(int id);
}