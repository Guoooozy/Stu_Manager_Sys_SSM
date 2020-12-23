package com.guo.repository;

import com.guo.entity.Student;
import com.guo.entity.StudentMark;

/**
 * @author gzy
 * @create 2020-12-22-18:03
 */
public interface PersionSourceRepository {
    public StudentMark selectById(String id);
}
