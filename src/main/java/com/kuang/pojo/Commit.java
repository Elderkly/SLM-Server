package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Commit {
    private int id;
    private int userID;
    private String userName;
    private String userImg;
    private int baseID;
    private int fatherID;
    private String fatherUserName;
    private String content;
    private String commitType;
    private String commitTime;
}
