package com.aop.jdbc.impl;

import com.aop.jdbc.dao.OwnCodeMapper;
import com.aop.jdbc.dynamic.DataSourceType;
import com.aop.jdbc.dynamic.annotation.DataSource;
import com.aop.jdbc.service.ITestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: spring-boot-aop-jdbc
 * @description: 实现类
 * @author: Mr.Yang
 * @create: 2018-10-13 13:39
 **/
@Service("testService")
public class TestServiceImpl implements ITestService {

    @Autowired
    private OwnCodeMapper ownCodeMapper;

    @DataSource(DataSourceType.MASTER)
    @Override
    public String save() {
        System.out.println("=======save======进入主库操作========save======");
        System.out.println("删除影响行数：" + this.ownCodeMapper.deleteByPrimaryKey(2));
        return null;
    }

    @DataSource(DataSourceType.SLAVE)
    @Override
    public String query() {
        System.out.println("=======query======进入从库操作=========query=====");
        System.out.println("查询结果：" + this.ownCodeMapper.selectByPrimaryKey(36));
        return null;
    }
}
