package com.guo.controller;

import com.guo.entity.Student;
import com.guo.repository.StudentRepository;
import com.guo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/**
 * @author gzy
 * @create 2020-12-21-16:20
 */
@Controller
@RequestMapping("/student")
public class StudentHandler {

    @Autowired
    private StudentService studentService;

    @GetMapping("/findAll")
    public ModelAndView findAll(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("showStu");
        modelAndView.addObject("list",studentService.findAll());
        return modelAndView;
    }





    @PostMapping("/upload")
    public String upload(MultipartFile img, HttpServletRequest request){
        if(img.getSize()>0){
            //获取保存上传文件的file路径
            String path = "D:\\xunlei\\apache-tomcat-8.5.61\\apache-tomcat-8.5.61\\webapps";
            //获取上传的文件名
            String name = img.getOriginalFilename();
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

    //登录操作
    @PostMapping("/login")
    public String login(Student student, Map<String,Student> map){
        for (int i = 0; i < student.getId().length(); i++) {
            if(student.getId().charAt(i)<'0'||student.getId().charAt(i)>'9'){
                return "Warn";
            }
        }
        Integer id = Integer.parseInt(student.getId());
        Student s = studentService.selectById(student.getId());
        if(!s.getName().equals(student.getName())){
            return "Warn";
        }
        map.put("persion",s);
        if(id<=5&&id>=1){
            //管理员
            return "Admin";
        }else if(id<=20&&id>=6){
            //老师
            return "Teacher";
        }else{
            //学生
            return "Student";
        }
    }
}
