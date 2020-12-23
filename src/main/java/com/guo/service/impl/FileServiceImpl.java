package com.guo.service.impl;

import com.guo.repository.FileRepository;
import com.guo.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-23-20:26
 */
@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private FileRepository fileRepository;

    @Override
    public List<String> findAllFile() {
        return fileRepository.findAllFile();
    }

    @Override
    public void addFile(String name) {
        fileRepository.addFile(name);
    }
}
