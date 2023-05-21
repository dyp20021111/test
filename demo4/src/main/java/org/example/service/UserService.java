package org.example.service;

import org.example.domain.User;

public interface UserService {
    //通过User用户和账号密码查询用户信息
    User login(User user);

}
