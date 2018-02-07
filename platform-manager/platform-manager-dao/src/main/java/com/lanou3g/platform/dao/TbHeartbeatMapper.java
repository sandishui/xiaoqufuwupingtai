package com.lanou3g.platform.dao;

import com.lanou3g.platform.pojo.TbHeartbeat;
import com.lanou3g.platform.pojo.TbHeartbeatExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbHeartbeatMapper {
    int countByExample(TbHeartbeatExample example);

    int deleteByExample(TbHeartbeatExample example);

    int insert(TbHeartbeat record);

    int insertSelective(TbHeartbeat record);

    List<TbHeartbeat> selectByExample(TbHeartbeatExample example);

    int updateByExampleSelective(@Param("record") TbHeartbeat record, @Param("example") TbHeartbeatExample example);

    int updateByExample(@Param("record") TbHeartbeat record, @Param("example") TbHeartbeatExample example);
}