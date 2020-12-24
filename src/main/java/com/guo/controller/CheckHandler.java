package com.guo.controller;

import cn.papercheck.engine.CheckManager;
import cn.papercheck.engine.checker.CheckTask;
import cn.papercheck.engine.pojo.LocalPaperLibrary;
import cn.papercheck.engine.pojo.Paper;
import com.guo.service.impl.FileServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import java.io.File;


/**
 * @author gzy
 * @create 2020-12-24-0:08
 */
@Controller
@RequestMapping("check")
//https://dreamspark.com.cn/blog/?id=16
public class CheckHandler {

    @GetMapping("/ccc/{name}.{hz}")
    public ModelAndView Check(@PathVariable("name") String name, @PathVariable("hz") String hz) throws Exception {
        String n= name+"."+hz;
        String path="C:\\迅雷下载\\tomcat8\\webapps\\file";
        //获取机器码
        //return CheckManager.INSTANCE.getMachineCode();/*
        //设置注册码（免费获取：https://dreamspark.com.cn/blog/?id=7）
        CheckManager.INSTANCE.setRegCode("/5xW964X/4x4pIrl5A2qubTZWIYQfZVluAHU5RMRA2+aNL+Y/3ROjGHG6hJ2W3uMxvkIQPUte7RY3RYTiw9+5XH6LuvhbyZ4lA+SQkRBXdNRsfc0GLLLLpmBWHVSUJhTVT1yZWnc6WXgL/phJUiomo7To9ybullnSAkuSBlAK7pPbXUvR6cx2KRd7FXT8H83K+WSrbfU9KYeVAphIpMQmDzr8qk39Z0XrHtDF4i2AgK556fx8ONT8j1h7qQPn8mx26pz5AYVh7l6oSt6CkJlS64iLQYUhW1Xh0R4DY6XogV2B0XbyWuyE7C7ZKErGo6uZLg6Z0Xqn6TAN8tmxmbNBCUR0utJWmrlcHM05hR+VblvbqXchN5OwGLspwBqa2naoBtnIlvuUPe0Z6uLVfifOtUYtPBi14kjN7L3OtdMVesQ2jjOe3ARz+VjLE25D/EbB2tHdUsZMcHXOmMpSAx4WqWERPABgPbUaavWIXDlKC8=");
        //检查注册状态
        System.out.println(CheckManager.INSTANCE.regState());

        //加载本地比对库（支持pdf、txt、doc、docx）
        LocalPaperLibrary paperLibrary = new LocalPaperLibrary(path+"\\Library");//初始化对比库对象。路径为比对库所在文件夹
        paperLibrary.build(); //构建比对库

        //读取待查重的文件（支持pdf、txt、doc、docx）
        Paper toCheckPaper = new Paper(new File(path+"\\tests.txt")); //读取本地文件

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
        checkTask.getReporter().saveAsFile("C:\\迅雷下载\\tomcat8\\webapps\\file\\Checks\\"+name+"1.mht", 1); //保存查重报告（全文标红）
        checkTask.getReporter().saveAsFile("C:\\迅雷下载\\tomcat8\\webapps\\file\\Checks\\"+name+"2.mht", 2); //保存查重报告（原文对照）

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/Teacher/checkRep");
        modelAndView.addObject("list",new FileServiceImpl().findAllFile("C:\\迅雷下载\\tomcat8\\webapps\\file\\Checks"));
        return modelAndView;
    }

}

