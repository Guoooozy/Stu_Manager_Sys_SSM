package com.guo.service.impl;

import com.guo.entity.ClassMark;
import com.guo.repository.ClassSourseRepository;
import com.guo.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-22-17:02
 */
@Service
public class ClassServiceImpl implements ClassService {

    @Autowired
    private ClassSourseRepository classSourseRepository;

    @Override
    public List<ClassMark> findAllCSorce() {
        return classSourseRepository.findAllCSorce();
    }
}
