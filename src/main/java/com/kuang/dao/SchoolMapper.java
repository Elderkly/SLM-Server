package com.kuang.dao;

import com.kuang.pojo.Menu;
import com.kuang.pojo.School;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface SchoolMapper {

    int addSchool(School school);

    //根据id删除一个Book
    int deleteSchoolById(int schoolID);

    //根据id查询,返回一个Book
    School querySchoolById(int schoolID);

    //查询全部Book,返回list集合
    List<School> queryAllSchool();

    //更新Book
    int updateSchool(School school);
    //  搜索书籍
//    Menu queryBookMenuName(@PathVariable("menuName") String menuName);
}
