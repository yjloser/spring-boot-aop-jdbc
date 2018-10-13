package com.aop.jdbc.dao;

import com.aop.jdbc.model.OwnCode;

import java.util.List;

/**
 * @program: zjsz-cms
 * @description: 全局验证码
 * @author: Mr.Yang
 * @create: 2018-07-04 08:49
 **/
public interface OwnCodeMapper {
    /**
     * 根据主键删除信息
     *
     * @param cId 返回码主键
     * @return int 返回影响行数
     * @author Mr.Yang
     * @date 2018/7/4 0004
     */
    int deleteByPrimaryKey(Integer cId);

    /**
     * 字段全部插入
     *
     * @param code 返回码实体类
     * @return int 返回影响行数
     * @author Mr.Yang
     * @date 2018/7/4 0004
     */
    int insert(OwnCode code);

    /**
     * 根据传入的参数选择插入
     *
     * @param code 选择性加入数据
     * @return int 返回影响行数
     * @author Mr.Yang
     * @date 2018/7/4 0004
     */
    int insertSelective(OwnCode code);

    /**
     * 根据主键查询信息
     *
     * @param cId 返回码主键
     * @return OwnDept 返回实体
     * @author Mr.Yang
     * @date 2018/7/4 0004
     */
    OwnCode selectByPrimaryKey(Integer cId);

    /**
     * 根据传入的实体选择进行更新
     *
     * @param code 返回码实体
     * @return int 返回影响行数
     * @author Mr.Yang
     * @date 2018/7/4 0004
     */
    int updateByPrimaryKeySelective(OwnCode code);

    /**
     * 根据传入的实体进行全部更新
     *
     * @param code 返回码实体
     * @return int 返回影响行数
     * @author Mr.Yang
     * @date 2018/7/4 0004
     */
    int updateByPrimaryKey(OwnCode code);

    /**
     * 查询全部返回码
     *
     * @return List 集合
     * @author Mr.Yang
     * @date 2018/7/4 0004
     */
    List<OwnCode> selectCodes();
}