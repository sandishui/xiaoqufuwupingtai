package com.lanou3g.platform.dao;

import com.lanou3g.platform.pojo.ReclamationOrder;
import com.lanou3g.platform.pojo.ReclamationOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ReclamationOrderMapper {
    int countByExample(ReclamationOrderExample example);

    int deleteByExample(ReclamationOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ReclamationOrder record);

    int insertSelective(ReclamationOrder record);

    List<ReclamationOrder> selectByExample(ReclamationOrderExample example);

    ReclamationOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ReclamationOrder record, @Param("example") ReclamationOrderExample example);

    int updateByExample(@Param("record") ReclamationOrder record, @Param("example") ReclamationOrderExample example);

    int updateByPrimaryKeySelective(ReclamationOrder record);

    int updateByPrimaryKey(ReclamationOrder record);
}