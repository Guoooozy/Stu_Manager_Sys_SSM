package com.guo.entity;

import lombok.Data;

/**
 * @author gzy
 * @create 2020-12-21-15:20
 * 学生成绩
 */
@Data
public class StudentMark {
    private String id;//学号
    private String name;
    private String classs;//班级
    private String cname;//课程名称
    private String ugrade;//平时成绩
    private String fgrade;//期末试卷成绩
    private String tgrade;//总成绩
}
