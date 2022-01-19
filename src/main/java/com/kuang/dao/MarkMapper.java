package com.kuang.dao;

import com.kuang.pojo.Mark;
import com.kuang.pojo.MarkResponseBody;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MarkMapper {
    MarkResponseBody getMainScoreByBaseID(@Param("baseID") int baseID,@Param("markType") String markType);
    int addMark(Mark mark);
    List<Mark> selectUserMark(@Param("userID") int userID, @Param("baseID") int baseID, @Param("markType") String markType);
}
