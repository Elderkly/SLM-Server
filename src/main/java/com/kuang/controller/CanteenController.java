package com.kuang.controller;

import com.kuang.pojo.Canteen;
import com.kuang.pojo.School;
import com.kuang.service.CanteenService;
import com.kuang.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/canteen")
public class CanteenController {
    @Autowired
    @Qualifier("CanteenServiceImpl")
    private CanteenService canteenService;

    @RequestMapping("/allCanteen")
    @ResponseBody
    public List<Canteen> list(Model model) {
        List<Canteen> list = canteenService.queryAllCanteen();
        return list;
    }

    @RequestMapping("/queryCanteenBySchoolID/{schoolID}")
    @ResponseBody
    public List<Canteen> queryCanteenBySchoolID(@PathVariable("schoolID") int schoolID) {
        List<Canteen> list = canteenService.queryCanteenBySchoolID(schoolID);
        return list;
    }


    @ResponseBody
    @RequestMapping(value = "/deleteCanteen",method = RequestMethod.POST)
    public int deleteCanteen(@RequestBody Canteen canteen) {
        try {
            canteenService.deleteCanteenById(canteen);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping(value = "/addCanteen",method = RequestMethod.POST)
    public int addCanteen(@RequestBody Canteen canteen) {
        try {
            System.out.println(canteen);
            canteenService.addCanteen(canteen);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping(value = "/updateCanteen",method = RequestMethod.POST)
    public int updateCanteen(@RequestBody Canteen canteen) {
        try{
            System.out.println(canteen);
            canteenService.updateCanteen(canteen);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }


}
