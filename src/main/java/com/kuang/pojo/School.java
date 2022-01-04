package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class School {
    private int schoolID;
    private String schoolName;
    private int canteenCount;
    private String img;
}
