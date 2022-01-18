package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    public int id;
    private String userName;
    private String isAdmin;
    private String mobile;
    private String openid;
    private int height;
    private int weight;
    private int age;
    private String userImg;
}
