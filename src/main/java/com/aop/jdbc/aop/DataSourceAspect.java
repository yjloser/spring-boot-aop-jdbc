package com.aop.jdbc.aop;

import com.aop.jdbc.dynamic.DynamicDataSourceHolder;
import com.aop.jdbc.dynamic.annotation.DataSource;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * @program: spring-boot-aop-jdbc
 * @description: aop处理
 * @author: Mr.Yang
 * @create: 2018-10-13 13:24
 **/
@Aspect
@Component
@Order(-1)
public class DataSourceAspect {

//    @Pointcut("execution(public * com.aop.jdbc.impl..*.*(..))")
//    public void dynamic() {
//
//    }


    @Before(value = "@annotation(dataSource)")
    public void dataSourcePoint(JoinPoint joinPoint, DataSource dataSource) {
        DynamicDataSourceHolder.putDataSource(dataSource.value());
    }
}
