package com.kuang.service;

import com.kuang.dao.MarkMapper;
import com.kuang.pojo.Mark;
import com.kuang.pojo.MarkResponseBody;

import java.util.List;

public class MarkServiceImpl implements MarkService{
    public MarkMapper markMapper;

    public void setMarkMapper(MarkMapper markMapper) {
        this.markMapper = markMapper;
    }

    @Override
    public MarkResponseBody getMainScoreByBaseID(int baseID, String markType) {
        return markMapper.getMainScoreByBaseID(baseID,markType);
    }

    @Override
    public int addMark(Mark mark) {
        return markMapper.addMark(mark);
    }

    @Override
    public List<Mark> selectUserMark(int userID, int baseID, String markType) {
        return markMapper.selectUserMark(userID,baseID,markType);
    }

}
