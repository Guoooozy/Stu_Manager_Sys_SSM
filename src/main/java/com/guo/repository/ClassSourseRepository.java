package com.guo.repository;

import com.guo.entity.ClassMark;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-22-16:56
 */
public interface ClassSourseRepository {
    public List<ClassMark> findAllCSorce();
}
