package com.lanou3g.platform.dao;

import com.lanou3g.platform.pojo.ScrapCollector;
import com.lanou3g.platform.pojo.ScrapCollectorExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScrapCollectorMapper {
    int countByExample(ScrapCollectorExample example);

    int deleteByExample(ScrapCollectorExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ScrapCollector record);

    int insertSelective(ScrapCollector record);

    List<ScrapCollector> selectByExample(ScrapCollectorExample example);

    ScrapCollector selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ScrapCollector record, @Param("example") ScrapCollectorExample example);

    int updateByExample(@Param("record") ScrapCollector record, @Param("example") ScrapCollectorExample example);

    int updateByPrimaryKeySelective(ScrapCollector record);

    int updateByPrimaryKey(ScrapCollector record);
}