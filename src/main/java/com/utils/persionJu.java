package com.utils;

import org.springframework.context.support.StaticApplicationContext;

/**
 * @author gzy
 * @create 2020-12-23-11:52
 */
public class persionJu {
    private static persionJu INSTANCE = new persionJu();
    private persionJu() {
    }

    public static persionJu getInstance(){
        return INSTANCE;
    }

}
