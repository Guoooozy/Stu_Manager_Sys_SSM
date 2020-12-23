package com.guo.service;

import com.guo.entity.Student;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-21-16:11
 */
public interface StudentService {
    public List<Student> findAll();
    public Student selectById(String id);
    public void updataById(Student student);
}
