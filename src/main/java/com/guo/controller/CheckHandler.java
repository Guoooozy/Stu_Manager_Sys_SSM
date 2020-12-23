package com.guo.controller;

import cn.papercheck.engine.CheckManager;
import cn.papercheck.engine.checker.CheckTask;
import cn.papercheck.engine.pojo.LocalPaperLibrary;
import cn.papercheck.engine.pojo.Paper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.naming.Name;
import java.io.File;
import java.io.IOException;

/**
 * @author gzy
 * @create 2020-12-24-0:08
 */
@Controller
@RequestMapping("check")
//https://dreamspark.com.cn/blog/?id=16
public class CheckHandler {
    @GetMapping("/ccc/{name}.{hz}")
    public String Check(@PathVariable("name") String name,@PathVariable("hz") String hz) throws Exception {
        String n= name+"."+hz;
        String path="D:\\xunlei\\apache-tomcat-8.5.61\\apache-tomcat-8.5.61\\webapps\\file";
        //获取机器码
        //System.out.println(CheckManager.INSTANCE.getMachineCode());
        //设置注册码（免费获取：https://dreamspark.com.cn/blog/?id=7）
        CheckManager.INSTANCE.setRegCode("TTinOHNacbXTOpm4+jWXyKRQ4Spb6X6PHJpw1ssD24jYKLEiN38uiNi8kxApBCWDYMH1kmbqI8zsUmUuBgeSgA==");
        //检查注册状态
        System.out.println(CheckManager.INSTANCE.regState());

        //加载本地比对库（支持pdf、txt、doc、docx）
        LocalPaperLibrary paperLibrary = new LocalPaperLibrary(path+"//libary");//初始化对比库对象。路径为比对库所在文件夹
        paperLibrary.build(); //构建比对库

        //读取待查重的文件（支持pdf、txt、doc、docx）
        Paper toCheckPaper = new Paper(new File(path+"//"+n)); //读取本地文件

        //注意：待查文本和比对库中的文本如果完全相同，将会自动跳过，不进行查重比对。测试时请不要使用完全相同的两个文本进行查重。

        //构建并启动任务
        CheckTask checkTask = CheckManager.INSTANCE
                .getCheckTaskBuilder() //获取查重任务构造器
                .setLibrary(paperLibrary) //设置比对库
                .setToCheckPaper(toCheckPaper) //设置待查Paper
                .build(); //构建任务，返回checkTask对象
        checkTask.start(); //启动任务
        checkTask.join(); //等待查重结束

        //保存查重报告
        checkTask.getReporter().saveAsFile(path+"\\"+name+"1.mht", 1); //保存查重报告（全文标红）
        checkTask.getReporter().saveAsFile(path+"\\"+name+"2.mht", 2); //保存查重报告（原文对照）

        return "/Teacher/download";

    }

}

