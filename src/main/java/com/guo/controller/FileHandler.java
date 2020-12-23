package com.guo.controller;

import com.guo.service.FileService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @author gzy
 * @create 2020-12-23-22:41
 */
@Controller
@RequestMapping("/File")
public class FileHandler {

    @Autowired
    private FileService fileService;
    //上传文件
    @PostMapping("/upload")
    public String upload(MultipartFile img, HttpServletRequest request){
        if(img.getSize()>0){
            //获取保存上传文件的file路径
            String path = "D:\\xunlei\\apache-tomcat-8.5.61\\apache-tomcat-8.5.61\\webapps\\file";
            //获取上传的文件名
            String name = img.getOriginalFilename();
            fileService.addFile(name);
            File file = new File(path,name);
            try {
                img.transferTo(file);
                //保存上传之后的文件路径
                request.setAttribute("path","/file/"+name);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "index";
    }

    //展示文件列表
    @GetMapping("/showFile")
    public ModelAndView showFile(ModelAndView modelAndView){
        modelAndView.setViewName("Teacher/download");
        modelAndView.addObject("list",fileService.findAllFile());
        return modelAndView;
    }


    //文件下载
    @GetMapping("/download/{name}.{hz}")
    public void download(@PathVariable("name") String name, @PathVariable("hz") String hz, HttpServletRequest request, HttpServletResponse response){
        if(name!=null){
            name=name+"."+hz;
            String path = "D:\\xunlei\\apache-tomcat-8.5.61\\apache-tomcat-8.5.61\\webapps\\file";
            File file = new File(path,name);
            OutputStream outputStream = null;
            if(file.exists()){
                response.setContentType("application/forc-download");
                response.setHeader("Content-Disposition","attachment;filename="+name);
            }
            try {
                outputStream = response.getOutputStream();
                outputStream.write(FileUtils.readFileToByteArray(file));
                outputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if(outputStream!=null){
                    try {
                        outputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }


}
