package com.kuang.controller;

import com.alibaba.fastjson.JSONObject;
import com.kuang.pojo.Login;
import com.kuang.pojo.User;
import com.kuang.service.UserService;
import com.kuang.util.HttpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/login/{code}/{nickName}")
    @ResponseBody
    public Login login(@PathVariable("code") String code, @PathVariable("nickName") String nickName) {

        Login result=new Login();//登录数据的实体类，存放登录信息等

        System.out.println(code);
        //获取微信session和生成自定义token
        HttpUtil hrs = new HttpUtil();

        //获取session_key和openid
        JSONObject session_key = hrs.domain("getSession_key", code);
        String session = session_key.getString("session_key");
        String openid = session_key.getString("openid");
        String errmsg = session_key.getString("errmsg");

        result.setSession(session);
        result.setOpenid(openid);
        result.setErrmsg(errmsg);

        User userInfo = userService.getUserInfo(openid);
        result.setUserInfo(userInfo);
        try {
            System.out.println(userInfo.id);
        } catch (Exception e) {
            User newUser = new User();
            newUser.setUserName(nickName);
            newUser.setIsAdmin("0");
            newUser.setOpenid(openid);
            userService.setUserInfo(newUser);
            User newUserInfo = userService.getUserInfo(openid);
            result.setUserInfo(newUserInfo);
        }
        return result;
    }

    @RequestMapping("/selectUserInfo/{openid}")
    @ResponseBody
    public User SelectUserInfo(@PathVariable("openid") String openid) {
        return userService.getUserInfo(openid);
    }
}
