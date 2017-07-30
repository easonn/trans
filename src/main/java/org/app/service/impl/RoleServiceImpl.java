package org.app.service.impl;

import javax.annotation.Resource;

import org.app.dao.RoleMapper;
import org.app.pojo.Role;
import org.app.service.IRoleService;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements IRoleService {

	@Resource
	private RoleMapper roleMapper;

	public int insert(Role record) {
		// TODO Auto-generated method stub
		return roleMapper.insert(record);
	}

	public int insertSelective(Role record) {
		// TODO Auto-generated method stub
		return roleMapper.insertSelective(record);
	}

	public int selectRoleLevelByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return roleMapper.selectRoleLevelByPrimaryKey(id);
	}

    @Override
    public Role selectByPrimaryKey(int id) {
        // TODO Auto-generated method stub
        return roleMapper.selectByPrimaryKey(id);
    }

}
