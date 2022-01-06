package com.kuang.service;

import com.kuang.pojo.RandomRecord;
import com.kuang.pojo.User;

import java.util.List;

//BookService:底下需要去实现,调用dao层
public interface RandomRecordService {
    List<RandomRecord> getRandomRecordByUserID(int userID);

    int changeRecord(RandomRecord randomRecord);

    int addChangeRecord(RandomRecord randomRecord);
}