package com.kuang.service;

import com.kuang.dao.MenuMapper;
import com.kuang.dao.SchoolMapper;
import com.kuang.pojo.Menu;
import com.kuang.pojo.School;

import java.util.List;

public class SchoolServiceImpl implements SchoolService {
    private SchoolMapper schoolMapper;

    public void setSchoolMapper(SchoolMapper schoolMapper) {
        this.schoolMapper = schoolMapper;
    }

    @Override
    public int addSchool(School school) {
        return schoolMapper.addSchool(school);
    }

    @Override
    public int deleteSchoolById(int schoolID) {
        return schoolMapper.deleteSchoolById(schoolID);
    }

    @Override
    public School querySchoolById(int schoolID) {
        return schoolMapper.querySchoolById(schoolID);
    }

    @Override
    public List<School> queryAllSchool() {
        return schoolMapper.queryAllSchool();
    }

    @Override
    public int updateSchool(School school) {
        return schoolMapper.updateSchool(school);
    }


}