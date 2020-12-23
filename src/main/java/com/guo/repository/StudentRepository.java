package com.guo.repository;

import com.guo.entity.Student;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-21-16:09
 */
public interface StudentRepository {
    public List<Student> findAll();
}
