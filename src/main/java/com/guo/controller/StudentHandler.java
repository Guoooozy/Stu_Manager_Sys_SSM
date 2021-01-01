package com.guo.controller;

import com.guo.entity.Student;
import com.guo.service.StudentService;
import com.utils.persionJu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
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


    //查找全部人员
    @GetMapping("/findAll")
    public ModelAndView findAll(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("Admin/showStu");
        modelAndView.addObject("list",studentService.findAll());
        return modelAndView;
    }



    //添加student
    @PostMapping("/addStudent")
    public ModelAndView addStu(Student student){
        ModelAndView modelAndView = new ModelAndView();
        studentService.addStu(student);
        modelAndView.setViewName("indexadmin");
        modelAndView.addObject("list",studentService.findAll());
        return modelAndView;
    }



    //删除Student
    @GetMapping("/delStudent/{id}")
    public ModelAndView delStu(@PathVariable("id") String id){
        ModelAndView modelAndView = new ModelAndView();
        studentService.dleStu(id);
        modelAndView.setViewName("indexadmin");
        modelAndView.addObject("list",studentService.findAll());
        return modelAndView;
    }


    @PostMapping("/update")
    public ModelAndView update(Student student){
        ModelAndView modelAndView = new ModelAndView();
        studentService.updataById(student);
        return modelAndView;
    }



    //登录操作
    @PostMapping("/login")
    public ModelAndView login(Student student){
        ModelAndView modelAndView = new ModelAndView();
        boolean b = persionJu.getInstance().judgeId(student.getId());
        if(!b){
            modelAndView.setViewName("Warn");
            return modelAndView;
        }
        Integer id = Integer.parseInt(student.getId());
        Student s = studentService.selectById(student.getId());
        if(!s.getName().equals(student.getName())){
            modelAndView.setViewName("Warn");
            return modelAndView;
        }
        modelAndView.addObject("persion",s);
        modelAndView.addObject("list",studentService.findAll());
        if(id<=5&&id>=1){
            //管理员
            modelAndView.setViewName("indexadmin");
            return modelAndView;
        }else if(id<=20&&id>=6){
            //老师
            modelAndView.setViewName("redirect:/indexteacher.jsp");
            return modelAndView;
        }else{
            //学生
            modelAndView.setViewName("redirect:/indexstudent.jsp");
            return modelAndView;
        }
    }
}
