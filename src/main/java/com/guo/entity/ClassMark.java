package com.guo.entity;

import lombok.Data;

/**
 * @author gzy
 * @create 2020-12-21-15:37
 * 班级学习信息统计
 */
@Data
public class ClassMark {
    private String id;//班级编号
    private String classs;//行政班级
    private String utgrade;//平时成绩总分
    private String uvgrade;//平时成绩平均分
    private String ftgrade;//期末试卷成绩总分
    private String fvgrade;//期末试卷成绩平均分
    private String ttgrade;//总成绩总分
    private String ttvgrade;//总成绩平均分
}
