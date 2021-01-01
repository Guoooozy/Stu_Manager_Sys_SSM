package com.guo.controller;

import cn.papercheck.engine.CheckManager;
import cn.papercheck.engine.algorithm.ClauseCheck;
import cn.papercheck.engine.algorithm.ContinuityCheck;
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

public class CheckHandler {

    @GetMapping("/ccc/{name}.{hz}")
    public ModelAndView Check(@PathVariable("name") String name, @PathVariable("hz") String hz) throws Exception {
        String n= name+"."+hz;
        String path="C:\\迅雷下载\\tomcat8\\webapps\\file";
        //获取机器码
        //return CheckManager.INSTANCE.getMachineCode();/*
        //设置注册码（免费获取：https://dreamspark.com.cn/blog/?id=7）
        CheckManager.INSTANCE.setRegCode("o7cXn3Kqtud83v2tXg1jcEBP8Pq28jUAirpqeeScVsLcVJwgGqTmT5UR2Sr1d9LLIPjBHCJSonRce28YMub2DvoZ+jjXSiEjl+5W1u6jMlNPtXEJ3DKAeOFLLagsJ7tKbObTfgtBwP4lsMKN8l8yonG2QE6LV0H8noKkgImhJFQw7pT2A41sGHT7Kd9w0i9EESr1T5ul0i1+PigbthBiElKU0HyLl8P6GNeiBrjm4/4aFADDiGoRw0lpD2Qs7UjQ69BV77OUIFj3CcrZQNmFuSo/ZKSK2cCEhu3EjiRbFhk4pBCvVx80to1y3WJE3hg+2Rnch5vvbxFhLQG8VDch7TiLG3A0O6/Pu0S0FV3JyCTtVyZDsXajeZRlFZP23H1pJW6+dRXyYQ13hDfci8z4lUP7WYRKD3mVumOjr9O84KEz+bkfRI+F2jsJ8BxrI5g7YrRa86AiyKTYe+Oo9qDzlmlx/FoqazXMXG7SvOrVjog=");
        //检查注册状态
        System.out.println(CheckManager.INSTANCE.regState());

        //加载本地比对库（支持pdf、txt、doc、docx）
        LocalPaperLibrary paperLibrary = new LocalPaperLibrary(path+"\\Library");//初始化对比库对象。路径为比对库所在文件夹
        paperLibrary.build(); //构建比对库

        //读取待查重的文件（支持pdf、txt、doc、docx）
        Paper toCheckPaper = new Paper(new File(path+"\\"+n)); //读取本地文件

        //注意：待查文本和比对库中的文本如果完全相同，将会自动跳过，不进行查重比对。测试时请不要使用完全相同的两个文本进行查重。

        //构建并启动任务
        CheckTask checkTask = CheckManager.INSTANCE
                .getCheckTaskBuilder() //获取查重任务构造器
                .setLibrary(paperLibrary) //设置比对库
                .setToCheckPaper(toCheckPaper) //设置待查Paper
                .addCheckCore(new ClauseCheck(0.85f))//两种不同的查重算法
                .addCheckCore(new ContinuityCheck(13))
                .build();//构建任务，返回checkTask对象
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

