package com.kuang.controller;

import com.kuang.pojo.Mark;
import com.kuang.pojo.MarkResponseBody;
import com.kuang.service.MarkService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/mark")
public class MarkController {
    @Autowired
    @Qualifier("MarkServiceImpl")
    private MarkService markService;

    @ResponseBody
    @RequestMapping("/getMainScoreByBaseID/{baseID}/{markType}")
    public MarkResponseBody getMainScoreByBaseID(@PathVariable("baseID") int baseID, @PathVariable("markType") String markType) {
        return markService.getMainScoreByBaseID(baseID, markType);
    }

    @ResponseBody
    @RequestMapping(value = "/addMark", method = RequestMethod.POST)
    public int addMark(@RequestBody Mark mark) {
        try {
            markService.addMark(mark);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping("/selectUserMark/{userID}/{baseID}/{markType}")
    public List<Mark> selectUserMark(@PathVariable("userID") int userID, @PathVariable("baseID") int baseID, @PathVariable("markType") String markType) {
        return markService.selectUserMark(userID, baseID, markType);
    }
}
