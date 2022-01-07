package com.kuang.service;

import com.kuang.pojo.Books;
import com.kuang.pojo.User;

import java.util.List;

//BookService:底下需要去实现,调用dao层
public interface UserService {
    User getUserInfo(String openid);

    int setUserInfo(User user);

    int changeUserInfo(User user);
}