package com.aop.jdbc.dynamic;


import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * @program: spring-boot-aop-jdbc
 * @description: 动态路由db
 * @author: Mr.Yang
 * @create: 2018-10-13 13:14
 **/
public class DynamicDataSource extends AbstractRoutingDataSource {

    @Override
    protected Object determineCurrentLookupKey() {
        if (DynamicDataSourceHolder.getDataSouce() != null) {
            return DynamicDataSourceHolder.getDataSouce();
        }
        return DataSourceType.MASTER.getType();
    }
}
