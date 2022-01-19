package com.kuang.service;

import com.kuang.pojo.Mark;
import com.kuang.pojo.MarkResponseBody;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MarkService {
    MarkResponseBody getMainScoreByBaseID(int baseID, String markType);
    int addMark(Mark mark);
    List<Mark> selectUserMark(int userID, int baseID, String markType);
}
