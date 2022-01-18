package com.kuang.controller;

import com.alibaba.fastjson.JSONObject;
import com.kuang.pojo.Login;
import com.kuang.pojo.LoginRequestBody;
import com.kuang.pojo.User;
import com.kuang.service.UserService;
import com.kuang.util.HttpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Login login(@RequestBody LoginRequestBody loginRequestBody) {

        Login result=new Login();//登录数据的实体类，存放登录信息等

        System.out.println(loginRequestBody.getCode());
        //获取微信session和生成自定义token
        HttpUtil hrs = new HttpUtil();

        //获取session_key和openid
        JSONObject session_key = hrs.domain("getSession_key", loginRequestBody.getCode());
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
            newUser.setUserName(loginRequestBody.getNickName());
            newUser.setIsAdmin("0");
            newUser.setOpenid(openid);
            newUser.setUserImg(loginRequestBody.getUserImg());
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

    @RequestMapping(value = "/changeUserInfo", method = RequestMethod.POST)
    @ResponseBody
    public int ChangeUserInfo(@RequestBody User user) {
        try {
            userService.changeUserInfo(user);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
