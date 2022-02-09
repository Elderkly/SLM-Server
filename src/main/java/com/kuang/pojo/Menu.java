package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Menu {
    private int menuID;
    private String menuName;
    private int calorie;
    private String menuType;
    private String img;
    private String menuTime;
}
