package com.dream.gold.persistent.dao;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * @Author: wangmeng
 * @Date: 2018/11/15 20:44
 * @Version 1.0
 */
public interface BaseMapper<T> extends Mapper<T>, MySqlMapper<T> {
}
