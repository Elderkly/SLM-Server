package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.pojo.Menu;
import com.kuang.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    @Qualifier("MenuServiceImpl")
    private MenuService menuService;

    @RequestMapping("/allMenu")
    @ResponseBody
    public List<Menu> list(Model model) {
        List<Menu> list = menuService.queryAllMenu();
        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/updateMenu",method = RequestMethod.POST)
    public int updateBook(@RequestBody Menu menu) {
        try{
            System.out.println(menu);
            menuService.updateMenu(menu);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping("/deleteMenu/{menuID}")
    public int deleteBook(@PathVariable("menuID") int menuID) {
        try {
            menuService.deleteMenuById(menuID);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping(value = "/addMenu",method = RequestMethod.POST)
    public int addMenu(@RequestBody Menu menu) {
        try {
            System.out.println(menu);
            menuService.addMenu(menu);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
