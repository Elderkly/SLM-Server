package com.kuang.service;

import com.kuang.pojo.Books;
import com.kuang.pojo.Menu;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

//BookService:底下需要去实现,调用dao层
public interface MenuService {
    int addMenu(Menu menu);

    int deleteMenuById(int menuID);

    int updateMenu(Menu menu);

    Menu queryMenuById(int menuID);

    List<Menu> queryAllMenu();

    List<Menu> queryMenuName(String menuName);
}