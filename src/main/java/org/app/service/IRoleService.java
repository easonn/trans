package org.app.service;

import org.app.pojo.Role;

public interface IRoleService {
	int insert(Role record);

	int insertSelective(Role record);

	int selectRoleLevelByPrimaryKey(int id);

	Role selectByPrimaryKey(int id);
}
