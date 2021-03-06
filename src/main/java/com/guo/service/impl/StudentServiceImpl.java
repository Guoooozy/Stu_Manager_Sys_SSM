package com.guo.service.impl;

import com.guo.entity.Student;
import com.guo.repository.StudentRepository;
import com.guo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-21-16:12
 */
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentRepository studentRepository;

    @Override
    public List<Student> findAll() {
        return studentRepository.findAll();
    }

    @Override
    public Student selectById(String id) {
        return studentRepository.selectById(id);
    }

    @Override
    public void updataById(Student student) {
        studentRepository.updataById(student);
    }

    @Override
    public void addStu(Student student) {
        studentRepository.addStu(student);
    }

    @Override
    public void dleStu(String id) {
        studentRepository.delStu(id);
    }
}
