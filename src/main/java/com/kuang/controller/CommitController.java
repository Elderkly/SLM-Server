package com.kuang.controller;

import com.kuang.pojo.Commit;
import com.kuang.service.CommitService;
import com.kuang.service.CommitServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/commit")
public class CommitController {
    @Autowired
    @Qualifier("CommitServiceImpl")
    private CommitService commitService;


    @ResponseBody
    @RequestMapping("/selectCommitByBaseID/{baseID}")
    public List<Commit> selectCommitByBaseID(@PathVariable("baseID") int baseID) {
        return commitService.selectCommitByBaseID(baseID);
    }

    @ResponseBody
    @RequestMapping(value = "/addCommit", method = RequestMethod.POST)
    public int addCommit(@RequestBody Commit commit) {
        try {
            commitService.addCommit(commit);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping("/deleteCommit/{commitID}")
    public int deleteCommit(@PathVariable("commitID") int commitID) {
        try {
            commitService.deleteCommit(commitID);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
