package com.guo.controller;

import com.utils.KeyWordComputer;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.xmlbeans.XmlException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.NumberFormat;
import java.util.*;

@Controller
public class Check {
    @RequestMapping("/check")
    public String task(){
        return "student/FileUp";
    }

    @RequestMapping("/upload1")
    public String upload1(Model model, int flag , MultipartFile upload, HttpServletRequest request) throws IOException, FileNotFoundException, UnsupportedEncodingException, OpenXML4JException, XmlException {
        if (!(upload.isEmpty())){
            if(upload.getOriginalFilename().endsWith(".txt")||upload.getOriginalFilename().endsWith(".doc")||upload.getOriginalFilename().endsWith(".docx")){
                //文件保存的位置
                String path = "C:\\迅雷下载\\tomcat8\\webapps\\file\\Checks2";
                File pathFile = new File(path);
                //如果文件保存路径不存在
                if (!pathFile.exists()) {
                    //创建路径文件
                    pathFile.mkdirs();
                }
                //获取上传文件的原始名称（UUID防止文件名相同）
                String fileName = System.currentTimeMillis()+upload.getOriginalFilename();
//            String fileName = upload.getOriginalFilename();
                File file = new File(path, fileName);
                //上传文件保存到指定路径
                upload.transferTo(file);
                Map<String,Integer> map= new KeyWordComputer().Test(path+File.separator+fileName);
                if(flag == 0){
                    request.getSession().setAttribute("map1",map);
                }else{
                    request.getSession().setAttribute("map2",map);
                }
                model.addAttribute("message","文件上传成功");
            }else {
                model.addAttribute("message","文件必须为txt文件、doc文件或者docx文件");
            }
        }else {
            model.addAttribute("message","文件不能为空");
        }
        return "Student/FileUp";
    }

    @RequestMapping("/compare")
    public String compare(HttpServletRequest request,Model model){
        Map<String,Double> map1 = (Map<String, Double>) request.getSession().getAttribute("map1");
        Map<String,Double> map2 = (Map<String, Double>) request.getSession().getAttribute("map2");
        //将map1中键存到HashSet中（hashset去重）
        HashSet<String> hashSet = new HashSet<String>();
        Set keySet1 = map1.keySet();
        Iterator iterator1 = keySet1.iterator();
        while (iterator1.hasNext()) {
            Object key1 = iterator1.next();
            hashSet.add(String.valueOf(key1));
        }
        //将map2中键存到HashSet中
        Set keySet2 = map2.keySet();
        Iterator iterator2 = keySet2.iterator();
        while (iterator2.hasNext()) {
            Object key2 = iterator2.next();
            hashSet.add(String.valueOf(key2));
        }
        //将hashSet放到List中进行排序
        List<String> arrayList = new ArrayList<String>(hashSet);
        //向量标准
        Collections.sort(arrayList);
        //向量a
        ArrayList<Double> a = new ArrayList<Double>();
        for (String s : arrayList) {
            if (map1.containsKey(s)) {
                a.add(Double.parseDouble(String.valueOf(map1.get(s))));
            } else {
                a.add(0.0);
            }
        }

        //向量b
        ArrayList<Double> b = new ArrayList<Double>();
        for (int i = 0; i < arrayList.size(); i++) {
            if (map2.containsKey(arrayList.get(i))) {
                b.add(Double.parseDouble(String.valueOf(map2.get(arrayList.get(i)))));
            } else {
                b.add(0.0);
            }
        }

        //集合转为数组
        Double[] double1 = a.toArray(new Double[]{});
        Double[] double2 = b.toArray(new Double[]{});

        //数组转换为向量 利用math3提供给的类
        //定义向量1
        RealVector value1 = new ArrayRealVector(double1);
        //定义向量2
        RealVector value2 = new ArrayRealVector(double2);

        //生成重复率rates，形式为“xx.xx%”
        Double rate = value1.cosine(value2);
        NumberFormat nf = NumberFormat.getPercentInstance();
        nf.setMinimumFractionDigits(2);
        String rates = nf.format(rate);

        model.addAttribute("result",rates);
        return "Student/FileUp";
    }
}
