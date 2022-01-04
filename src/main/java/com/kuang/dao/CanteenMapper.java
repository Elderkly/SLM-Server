package com.kuang.dao;

import com.kuang.pojo.Canteen;
import com.kuang.pojo.School;

import java.util.List;

public interface CanteenMapper {

    int addCanteen(Canteen canteen);

    //根据id删除一个Book
    int deleteCanteenById(Canteen Canteen);

    //根据id查询,返回一个Book
    List<Canteen> queryCanteenBySchoolID(int schoolID);

    //查询全部Book,返回list集合
    List<Canteen> queryAllCanteen();

    //更新Book
    int updateCanteen(Canteen canteen);
    //  搜索书籍
//    Menu queryBookMenuName(@PathVariable("menuName") String menuName);
}
