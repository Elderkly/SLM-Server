package com.kuang.dao;

import com.kuang.pojo.Login;
import com.kuang.pojo.User;

public interface UserMapper {
    User getUserInfo(String openid);

    int setUserInfo(User user);

    int changeUserInfo(User user);
}
