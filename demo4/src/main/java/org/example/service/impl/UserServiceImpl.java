package org.example.service.impl;

import org.example.dao.UserMapper;
import org.example.domain.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    //注入UserMapper对象
    @Autowired
    private UserMapper userMapper;
    //通过User的账号和用户密码查询用户信息
    @Override
    public User login(User user)
    {
        return userMapper.login(user);
    }

}
