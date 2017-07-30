package org.app.service;

import java.util.List;

import org.app.pojo.User;

public interface IUserService {
    public User getUserById(int userId);

    public User validationUser(User user);

    int insert(User record);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> SelectByRoleId(int roleId);

    List<User> selectByAdmin();

    User selectByName(String name);
    
    int deleteByPrimaryKey(Integer id);
}
