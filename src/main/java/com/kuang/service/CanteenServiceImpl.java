package com.kuang.service;

import com.kuang.dao.CanteenMapper;
import com.kuang.dao.SchoolMapper;
import com.kuang.pojo.Canteen;
import com.kuang.pojo.CanteenMenuRecord;
import com.kuang.pojo.School;

import java.util.List;

public class CanteenServiceImpl implements CanteenService {
    private CanteenMapper canteenMapper;

    public void setCanteenMapper(CanteenMapper canteenMapper) {
        this.canteenMapper = canteenMapper;
    }


    @Override
    public int addCanteen(Canteen canteen) {
        return canteenMapper.addCanteen(canteen);
    }

    @Override
    public int deleteCanteenById(Canteen canteen) {
        return canteenMapper.deleteCanteenById(canteen);
    }

    @Override
    public List<Canteen> queryCanteenBySchoolID(int schoolID) {
        return canteenMapper.queryCanteenBySchoolID(schoolID);
    }

    @Override
    public List<Canteen> queryAllCanteen() {
        return canteenMapper.queryAllCanteen();
    }

    @Override
    public int updateCanteen(Canteen canteen) {
        return canteenMapper.updateCanteen(canteen);
    }

    @Override
    public int addCanteenMenuRecord(CanteenMenuRecord canteenMenuRecord){
        return canteenMapper.addCanteenMenuRecord(canteenMenuRecord);
    }

    @Override
    public List<CanteenMenuRecord> getCanteenMenuRecord(int canteenID) {
        return canteenMapper.getCanteenMenuRecord(canteenID);
    }

    @Override
    public int getMaxCanteenID() {
        return canteenMapper.getMaxCanteenID();
    }
}