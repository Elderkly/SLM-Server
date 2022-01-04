package com.kuang.controller;

import com.kuang.pojo.Menu;
import com.kuang.pojo.School;
import com.kuang.service.MenuService;
import com.kuang.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/school")
public class SchoolController {
    @Autowired
    @Qualifier("SchoolServiceImpl")
    private SchoolService schoolService;

    @RequestMapping("/allSchool")
    @ResponseBody
    public List<School> list(Model model) {
        List<School> list = schoolService.queryAllSchool();
        return list;
    }

    @ResponseBody
    @RequestMapping("/deleteSchool/{schoolID}")
    public int deleteSchool(@PathVariable("schoolID") int schoolID) {
        try {
            schoolService.deleteSchoolById(schoolID);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping(value = "/addSchool",method = RequestMethod.POST)
    public int addSchool(@RequestBody School school) {
        try {
            System.out.println(school);
            schoolService.addSchool(school);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping(value = "/updateSchool",method = RequestMethod.POST)
    public int updateSchool(@RequestBody School school) {
        try{
            System.out.println(school);
            schoolService.updateSchool(school);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
