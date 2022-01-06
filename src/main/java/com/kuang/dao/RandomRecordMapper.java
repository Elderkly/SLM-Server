package com.kuang.dao;

import com.kuang.pojo.RandomRecord;
import com.kuang.pojo.User;

import java.util.List;

public interface RandomRecordMapper {
    List<RandomRecord> getRandomRecordByUserID(int userID);

    int changeRecord(RandomRecord randomRecord);

    int addChangeRecord(RandomRecord randomRecord);

    int deleteRecord(int recordID);
}
