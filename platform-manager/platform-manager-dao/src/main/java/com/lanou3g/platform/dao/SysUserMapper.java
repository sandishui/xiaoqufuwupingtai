package com.lanou3g.platform.dao;

import com.lanou3g.platform.pojo.SysUser;
import com.lanou3g.platform.pojo.SysUserExample;
import com.lanou3g.platform.pojo.SysUserExt;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysUserMapper {
    int countByExample(SysUserExample example);

    int deleteByExample(SysUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    List<SysUser> selectByExample(SysUserExample example);

    SysUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysUser record, @Param("example") SysUserExample example);

    int updateByExample(@Param("record") SysUser record, @Param("example") SysUserExample example);

    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);

	int deleteUser(int[] userid);

	int updateStateStart(Integer[] ids);

	int updateStateStop(Integer[] ids);
	
	/**
	 * 查询所有
	 * @param param
	 * @return
	 */
	List<SysUserExt> selectAll(SysUserExample example);
	
}