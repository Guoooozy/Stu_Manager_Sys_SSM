package com.guo.repository;

import java.util.List;

/**
 * @author gzy
 * @create 2020-12-23-20:21
 */
public interface FileRepository {
    //查询出所有的文件名
    public List<String> findAllFile();

    public void addFile(String name);
    //上传文件名
}
