package test;

import cn.papercheck.engine.CheckManager;
import org.junit.jupiter.api.Test;

/**
 * @author gzy
 * @create 2020-12-24-0:04
 */
public class Mytest {
    public static void main(String[] args) {
        CheckManager.INSTANCE.setRegCode("注册码");
    }
}
