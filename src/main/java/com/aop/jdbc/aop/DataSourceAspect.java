package com.aop.jdbc.aop;

import com.aop.jdbc.dynamic.DynamicDataSourceHolder;
import com.aop.jdbc.dynamic.annotation.DataSource;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

/**
 * @program: spring-boot-aop-jdbc
 * @description: aop处理
 * @author: Mr.Yang
 * @create: 2018-10-13 13:24
 **/
@Aspect
@Component
public class DataSourceAspect implements Ordered {

//    @Pointcut("execution(public * com.aop.jdbc.impl..*.*(..))")
//    public void dynamic() {
//
//    }


    @Before(value = "@annotation(dataSource)")
    public void dataSourcePoint(JoinPoint joinPoint, DataSource dataSource) {
        DynamicDataSourceHolder.putDataSource(dataSource.value());
    }

    @Override
    public int getOrder() {
        return -1;
    }
}
