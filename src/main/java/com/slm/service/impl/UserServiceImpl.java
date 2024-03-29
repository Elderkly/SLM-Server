package com.slm.service.impl;

import com.slm.dao.UserMapper;
import com.slm.pojo.User;
import com.slm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectUser(int id) {
        return userMapper.selectUser(id);
    }
}