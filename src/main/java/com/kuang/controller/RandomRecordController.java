package com.kuang.controller;

import com.alibaba.fastjson.JSONObject;
import com.kuang.pojo.Login;
import com.kuang.pojo.RandomRecord;
import com.kuang.pojo.School;
import com.kuang.pojo.User;
import com.kuang.service.RandomRecordService;
import com.kuang.service.UserService;
import com.kuang.util.HttpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/randomRecord")
public class RandomRecordController {
    @Autowired
    @Qualifier("RandomRecordServiceImpl")
    private RandomRecordService randomRecordService;

    @ResponseBody
    @RequestMapping("/getUserRandomRecord/{userID}")
    public List<RandomRecord> getUserRandomRecord(@PathVariable("userID") int userID) {
        return randomRecordService.getRandomRecordByUserID(userID);
    }

    @ResponseBody
    @RequestMapping(value = "/addRandomRecord", method = RequestMethod.POST)
    public int addRandomRecord(@RequestBody RandomRecord randomRecord) {
        try {
            randomRecordService.addChangeRecord(randomRecord);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping(value = "/changeRandomRecord", method = RequestMethod.POST)
    public int changeRandomRecord(@RequestBody RandomRecord randomRecord) {
        try {
            randomRecordService.changeRecord(randomRecord);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping(value = "/deleteRecord/{recordID}")
    public int deleteRecord(@PathVariable("recordID") int recordID) {
        try {
            randomRecordService.deleteRecord(recordID);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
