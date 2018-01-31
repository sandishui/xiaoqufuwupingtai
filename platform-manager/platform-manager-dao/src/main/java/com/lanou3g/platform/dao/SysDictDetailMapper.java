package com.lanou3g.platform.dao;

import com.lanou3g.platform.pojo.SysDictDetail;
import com.lanou3g.platform.pojo.SysDictDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysDictDetailMapper {
    int countByExample(SysDictDetailExample example);

    int deleteByExample(SysDictDetailExample example);

    int deleteByPrimaryKey(Integer detailId);

    int insert(SysDictDetail record);

    int insertSelective(SysDictDetail record);

    List<SysDictDetail> selectByExample(SysDictDetailExample example);

    SysDictDetail selectByPrimaryKey(Integer detailId);

    int updateByExampleSelective(@Param("record") SysDictDetail record, @Param("example") SysDictDetailExample example);

    int updateByExample(@Param("record") SysDictDetail record, @Param("example") SysDictDetailExample example);

    int updateByPrimaryKeySelective(SysDictDetail record);

    int updateByPrimaryKey(SysDictDetail record);
}