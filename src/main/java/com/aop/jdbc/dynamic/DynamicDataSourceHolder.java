package com.aop.jdbc.dynamic;

/**
 * @program: spring-boot-aop-jdbc
 * @description: 设置数据库路由key
 * @author: Mr.Yang
 * @create: 2018-10-13 13:17
 **/
public class DynamicDataSourceHolder {

    private static final ThreadLocal<String> holder = new ThreadLocal<>();

    public static void putDataSource(DataSourceType dataSourceType) {
        holder.set(dataSourceType.getType());
    }

    public static String getDataSouce() {
        return holder.get();
    }
}
