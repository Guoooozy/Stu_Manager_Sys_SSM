package com.guo.entity;

import lombok.Data;

/**
 * @author gzy
 * @create 2020-12-21-15:12
 * 课程信息
 */

@Data
public class CourseInfo {
    private String cid;//课程号
    private String course;//课程名称
    private String ctime;//课程学时
    private String cgrade;//课程学分
}
