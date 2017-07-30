package org.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.*;
import org.app.constant.SQLReturn;
import org.app.dao.UserMapper;
import org.app.pojo.User;
import org.app.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource
    private UserMapper userMapper;

    public User getUserById(int userId) {
        return this.userMapper.selectByPrimaryKey(userId);
    }

    public User validationUser(User record) {
        return userMapper.validationUser(record);
    }

    public int insert(User record) {
        if (null != userMapper.selectByName(record.getName())) {
            return SQLReturn.DATA_EXIST;
        } else {
            record.setId(userMapper.getMaxId() + 1);
            return userMapper.insert(record);
        }
    }

    public int updateByPrimaryKeySelective(User record) {
        // TODO Auto-generated method stub
        return userMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(User record) {
        // TODO Auto-generated method stub
        return userMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<User> SelectByRoleId(int roleId) {
        // TODO Auto-generated method stub
        return userMapper.SelectByRoleId(roleId);
    }

    @Override
    public List<User> selectByAdmin() {
        // TODO Auto-generated method stub
        List<User> userList = userMapper.selectByAdmin();
        for (User user : userList) {
            if (user.getName().equals("admin")) {
                userList.remove(user);
                break;
            }
        }
        return userList;
    }

    public User selectByName(String name) {
        return userMapper.selectByName(name);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        // TODO Auto-generated method stub
        return userMapper.deleteByPrimaryKey(id);
    }

}