package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CanteenMenuRecord {
    private int recordId;
    private int canteenID;
    private int schoolID;
    private String canteenName;
    private int menuID;
    private String menuName;
    private int calorie;
    private String menuType;
    private String img;
}
