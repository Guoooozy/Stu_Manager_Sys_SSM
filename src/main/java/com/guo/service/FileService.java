package com.guo.service;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-23-20:25
 */
public interface FileService {
    public List<String> findAllFile();

    public void addFile(String name);
}
