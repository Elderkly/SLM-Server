package com.kuang.service;

import com.kuang.dao.BookMapper;
import com.kuang.dao.MenuMapper;
import com.kuang.pojo.Books;
import com.kuang.pojo.Menu;

import java.util.List;

public class MenuServiceImpl implements MenuService {
    private MenuMapper menuMapper;

    public void setMenuMapper(MenuMapper menuMapper) {
        this.menuMapper = menuMapper;
    }

    @Override
    public int addMenu(Menu menu) {
        return menuMapper.addMenu(menu);
    }

    @Override
    public int deleteMenuById(int menuID) {
        return menuMapper.deleteMenuById(menuID);
    }

    @Override
    public int updateMenu(Menu menu) {
        return menuMapper.updateMenu(menu);
    }

    @Override
    public Menu queryMenuById(int menuID) {
        return menuMapper.queryMenuById(menuID);
    }

    @Override
    public List<Menu> queryAllMenu() {
        return menuMapper.queryAllMenu();
    }

    @Override
    public Menu queryBookMenuName(String menuName) {
        return menuMapper.queryBookMenuName(menuName);
    }
}