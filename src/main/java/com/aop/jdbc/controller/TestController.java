package com.aop.jdbc.controller;

import com.aop.jdbc.impl.TestServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: spring-boot-aop-jdbc
 * @description: 测试
 * @author: Mr.Yang
 * @create: 2018-10-13 14:21
 **/
@RestController
public class TestController {

    @Autowired
    private TestServiceImpl testService;

    @RequestMapping("master")
    public void master() {
        this.testService.save();
    }

    @RequestMapping("slave")
    public void slave() {
        this.testService.query();
    }

}
