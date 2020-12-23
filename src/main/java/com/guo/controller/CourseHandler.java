package com.guo.controller;

import com.guo.service.ClassService;
import com.guo.service.PersionSourceService;
import com.utils.persionJu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author gzy
 * @create 2020-12-21-23:51
 */
@RestController
@RequestMapping("/course")
public class CourseHandler {

    @Autowired
    private ClassService classService;

    @Autowired
    private PersionSourceService persionSourceService;

    @GetMapping("/findCSorce")
    public ModelAndView findCSorce(){
        ModelAndView modelAndView=new ModelAndView("Teacher/showCSourse","CSourse",classService.findAllCSorce());
        return modelAndView;
    }

    @GetMapping("/PersonselectById")
    public ModelAndView PersionSelectById(HttpServletRequest request){
        String id= request.getParameter("id");
        ModelAndView modelAndView = new ModelAndView();
        if(!persionJu.getInstance().judgeId(id)){
            modelAndView.setViewName("Warn");
            return modelAndView;
        }
        modelAndView.setViewName("Student/showPSourse");
        modelAndView.addObject("PSourse",persionSourceService.selectById(id));
        return modelAndView;
    }
}
