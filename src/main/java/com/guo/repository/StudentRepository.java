package com.guo.repository;

import com.guo.entity.Student;

import javax.swing.text.Style;
import java.util.List;

/**
 * @author gzy
 * @create 2020-12-21-16:09
 */
public interface StudentRepository {
    public List<Student> findAll();
    public Student selectById(String id);
    public void updataById(Student student);
}
