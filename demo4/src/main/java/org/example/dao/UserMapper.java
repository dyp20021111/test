package org.example.dao;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.example.domain.User;

public interface UserMapper {

    @Select("select * from user where user_email=#{email} AND "+"user_password=#{password}")
    @Results(id="userMap",value = {
            @Result(column = "user_password",property = "password"),
            @Result(column = "user_email",property = "email")
    })
    User login(User user);
}
