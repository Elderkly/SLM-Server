package com.kuang.controller;

import com.kuang.pojo.Config;
import com.kuang.service.ConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/config")
public class ConfigController {
    @Autowired
    @Qualifier("ConfigServiceImpl")
    private ConfigService configService;

    @ResponseBody
    @RequestMapping("/getConfig")
    public Config getConfig() {
        return configService.getConfig();
    }

    @ResponseBody
    @RequestMapping(value = "/setConfig",method = RequestMethod.POST)
    public int setConfig(@RequestBody Config config) {
        try{
            configService.setConfig(config);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
