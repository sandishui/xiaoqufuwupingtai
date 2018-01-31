package com.lanou3g.platform.dao;

import com.lanou3g.platform.pojo.HousingEstate;
import com.lanou3g.platform.pojo.HousingEstateExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HousingEstateMapper {
    int countByExample(HousingEstateExample example);

    int deleteByExample(HousingEstateExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(HousingEstate record);

    int insertSelective(HousingEstate record);

    List<HousingEstate> selectByExample(HousingEstateExample example);

    HousingEstate selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") HousingEstate record, @Param("example") HousingEstateExample example);

    int updateByExample(@Param("record") HousingEstate record, @Param("example") HousingEstateExample example);

    int updateByPrimaryKeySelective(HousingEstate record);

    int updateByPrimaryKey(HousingEstate record);
}