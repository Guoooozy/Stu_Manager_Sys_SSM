package com.guo.service.impl;

import com.guo.entity.StudentMark;
import com.guo.repository.PersionSourceRepository;
import com.guo.service.PersionSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author gzy
 * @create 2020-12-22-18:07
 */
@Service
public class PersionSourceServiceImpl implements PersionSourceService {

    @Autowired
    private PersionSourceRepository persionSourceRepository;

    @Override
    public StudentMark selectById(String id) {
        return persionSourceRepository.selectById(id);
    }
}
