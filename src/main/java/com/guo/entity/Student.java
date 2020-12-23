package com.guo.entity;

import lombok.Data;

/**
 * @author gzy
 * @create 2020-12-21-15:08
 * 学生信息
 */
@Data
public class Student {
    private String id;//学号
    private String name;
    private String sex;
    private String school;
    private String classs;//班级
    private String phone;
}
