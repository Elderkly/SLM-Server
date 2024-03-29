package com.kuang.service;

import com.kuang.pojo.Menu;
import com.kuang.pojo.School;

import java.util.List;

//BookService:底下需要去实现,调用dao层
public interface SchoolService {
    int addSchool(School school);

    //根据id删除一个Book
    int deleteSchoolById(int schoolID);

    //根据id查询,返回一个Book
    School querySchoolById(int schoolID);

    //查询全部Book,返回list集合
    List<School> queryAllSchool();

    //更新Book
    int updateSchool(School school);
}