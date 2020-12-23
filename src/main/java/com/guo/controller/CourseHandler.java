package com.guo.controller;

import com.guo.repository.ClassSourseRepository;
import com.guo.repository.PersionSourceRepository;
import com.guo.service.ClassService;
import com.guo.service.PersionSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
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
        ModelAndView modelAndView=new ModelAndView("showCSourse","CSourse",classService.findAllCSorce());
        return modelAndView;
    }

    @PostMapping("/PersonselectById")
    public ModelAndView PersionSelectById(HttpServletRequest request){
        String id= request.getParameter("id");
        ModelAndView modelAndView = new ModelAndView();

        for (int i = 0; i < id.length(); i++) {
            if(id.charAt(i)<'0'||id.charAt(i)>'9'){
                modelAndView.setViewName("Warn");
                return modelAndView;
            }
        }

        modelAndView.setViewName("showPSourse");
        modelAndView.addObject("PSourse",persionSourceService.selectById(id));
        return modelAndView;
    }
}
