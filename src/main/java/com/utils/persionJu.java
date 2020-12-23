package com.utils;

import org.springframework.context.support.StaticApplicationContext;
import org.springframework.stereotype.Controller;

/**
 * @author gzy
 * @create 2020-12-23-11:52
 */
@Controller
public class persionJu {
    private static persionJu INSTANCE = new persionJu();
    private persionJu() {
    }

    public static persionJu getInstance(){
        return INSTANCE;
    }

    public boolean judgeId(String id){
        for (int i = 0; i < id.length(); i++) {
            if(id.charAt(i)<'0'||id.charAt(i)>'9'){
                return false;
            }
        }
        return true;
    }

}
