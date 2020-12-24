package com.guo.service;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-23-20:25
 */
public interface FileService {
    //该路径下所有的文件名
    public List<String> findAllFile(String path);
}
