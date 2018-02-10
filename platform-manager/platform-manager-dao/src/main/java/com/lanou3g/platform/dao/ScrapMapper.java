package com.lanou3g.platform.dao;

import com.lanou3g.platform.pojo.Scrap;
import com.lanou3g.platform.pojo.ScrapExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScrapMapper {
    int countByExample(ScrapExample example);

    int deleteByExample(ScrapExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Scrap record);

    int insertSelective(Scrap record);

    List<Scrap> selectByExample(ScrapExample example);

    Scrap selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Scrap record, @Param("example") ScrapExample example);

    int updateByExample(@Param("record") Scrap record, @Param("example") ScrapExample example);

    int updateByPrimaryKeySelective(Scrap record);

    int updateByPrimaryKey(Scrap record);
    
    int deleteById(int [] id);
}