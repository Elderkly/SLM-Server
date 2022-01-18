package com.kuang.controller;

import com.kuang.pojo.Forum;
import com.kuang.service.CanteenService;
import com.kuang.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/forum")
public class ForumController {
    @Autowired
    @Qualifier("ForumServiceImpl")
    private ForumService forumService;

    @RequestMapping(value = "/addForum", method = RequestMethod.POST)
    @ResponseBody
    public int addForum(@RequestBody Forum forum) {
        try {
            forumService.addForum(forum);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping("/getAllForum")
    public List<Forum> getAllForum() {
        return forumService.selectAllForum();
    }

    @ResponseBody
    @RequestMapping("/deleteForum/{forumID}")
    public int deleteForum(@PathVariable("forumID") int forumID) {
        try {
            forumService.deleteForum(forumID);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping("/selectForumByUserID/{userID}")
    public List<Forum> selectForumByUserID(@PathVariable("userID") int userID) {
        return forumService.selectForumByUserID(userID);
    }
}
