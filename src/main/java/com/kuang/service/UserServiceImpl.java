package com.kuang.service;

import com.kuang.dao.BookMapper;
import com.kuang.dao.UserMapper;
import com.kuang.pojo.Books;
import com.kuang.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService {

    //调用dao层的操作，设置一个set接口，方便Spring管理
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User getUserInfo(String openid) {
        return userMapper.getUserInfo(openid);
    }

    @Override
    public int setUserInfo(User user) {
        return userMapper.setUserInfo(user);
    }
}