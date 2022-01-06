package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RandomRecord {
    private int id;
    private int menuID;
    private int schoolID;
    private int userID;
    private String menuName;
    private String menuType;
    private String img;
    private int calorie;
    private String schoolName;
    private String recordTime;
    private int canteenID;
    private String canteenName;
}
