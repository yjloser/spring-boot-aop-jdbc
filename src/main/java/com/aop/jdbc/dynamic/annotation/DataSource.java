package com.aop.jdbc.dynamic.annotation;

import com.aop.jdbc.dynamic.DataSourceType;

import java.lang.annotation.*;

/**
 * @program: spring-boot-aop-jdbc
 * @description: 自定义路由注解
 * @author: Mr.Yang
 * @create: 2018-10-13 13:19
 **/

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
@Documented
@Inherited
public @interface DataSource {

    /**
     * 数据库路由
     */
    DataSourceType value() default DataSourceType.MASTER;
}
