package com.slm.controller;

import com.slm.pojo.User;
import com.slm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/select")
    @ResponseBody
    public ModelAndView selectUser(@RequestParam("id") Integer id) throws Exception {
        ModelAndView mav = new ModelAndView();
        User user = userService.selectUser(id);
        mav.addObject("user", user);
        mav.setViewName("user");
        return mav;
    }
}