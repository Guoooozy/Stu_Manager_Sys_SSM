package com.guo.service.impl;

import com.guo.service.FileService;
import org.springframework.stereotype.Service;

import java.io.File;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;

/**
 * @author gzy
 * @create 2020-12-23-20:26
 */
@Service
public class FileServiceImpl implements FileService {

    @Override
    public List<String> findAllFile(String path) {
        File file = new File(path);
        File[] list=file.listFiles();
        List<String> fileList = new LinkedList<>();
        for (int i = 0; i < list.length; i++) {
            if(list[i].isFile()){
                fileList.add(list[i].getName());
            }
        }
        return fileList;
    }
}
