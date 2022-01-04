package com.kuang.service;

import com.kuang.pojo.Canteen;
import com.kuang.pojo.School;

import java.util.List;

//BookService:底下需要去实现,调用dao层
public interface CanteenService {
    int addCanteen(Canteen canteen);

    //根据id删除一个Book
    int deleteCanteenById(Canteen canteen);

    //根据id查询,返回一个Book
    List<Canteen> queryCanteenBySchoolID(int schoolID);

    //查询全部Book,返回list集合
    List<Canteen> queryAllCanteen();

    //更新Book
    int updateCanteen(Canteen canteen);
}