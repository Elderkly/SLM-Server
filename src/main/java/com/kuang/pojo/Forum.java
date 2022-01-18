package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Forum {
    private int id;
    private String userImg;
    private String userName;
    private String content;
    private int menuID;
    private String menuName;
    private int calorie;
    private String schoolName;
    private int schoolID;
    private int canteenID;
    private String canteenName;
    private String recordTime;
    private String menuType;
    private String img;
    private String forumTime;
    private String forumType;
    private int userID;
}
