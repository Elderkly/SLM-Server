package com.kuang.service;

import com.kuang.dao.RandomRecordMapper;
import com.kuang.dao.UserMapper;
import com.kuang.pojo.RandomRecord;
import com.kuang.pojo.User;

import java.util.List;

public class RandomRecordServiceImpl implements RandomRecordService {

    //调用dao层的操作，设置一个set接口，方便Spring管理
    private RandomRecordMapper randomRecordMapper;

    public void setRandomRecordMapper(RandomRecordMapper randomRecordMapper) {
        this.randomRecordMapper = randomRecordMapper;
    }

    @Override
    public List<RandomRecord> getRandomRecordByUserID(int userID) {
        return randomRecordMapper.getRandomRecordByUserID(userID);
    }

    @Override
    public int changeRecord(RandomRecord randomRecord) {
        return randomRecordMapper.changeRecord(randomRecord);
    }

    @Override
    public int addChangeRecord(RandomRecord randomRecord) {
        return randomRecordMapper.addChangeRecord(randomRecord);
    }

    @Override
    public int deleteRecord(int recordID) {
        return randomRecordMapper.deleteRecord(recordID);
    }
}