package com.kuang.dao;

import com.kuang.pojo.Books;
import com.kuang.pojo.Menu;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface MenuMapper {

    int addMenu(Menu menu);

    //根据id删除一个Book
    int deleteMenuById(int menuID);

    //更新Book
    int updateMenu(Menu menu);

    //根据id查询,返回一个Book
    Menu queryMenuById(int menuID);

    //查询全部Book,返回list集合
    List<Menu> queryAllMenu();

    //  搜索书籍
    Menu queryBookMenuName(@PathVariable("menuName") String menuName);
}
