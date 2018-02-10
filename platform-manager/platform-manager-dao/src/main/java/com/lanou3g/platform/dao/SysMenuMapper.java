package com.lanou3g.platform.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lanou3g.platform.pojo.SysMenu;
import com.lanou3g.platform.pojo.SysMenuExample;
import com.lanou3g.platform.pojo.SysMenuExt;
import com.lanou3g.platform.pojo.SysUserExample;

public interface SysMenuMapper {
    int countByExample(SysMenuExample example);

    int deleteByExample(SysMenuExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysMenu record);

    int insertSelective(SysMenu record);

    List<SysMenu> selectByExample(SysMenuExample example);

    SysMenu selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysMenu record, @Param("example") SysMenuExample example);

    int updateByExample(@Param("record") SysMenu record, @Param("example") SysMenuExample example);

    int updateByPrimaryKeySelective(SysMenu record);

    int updateByPrimaryKey(SysMenu record);
    
    
    int deleteMenu(int[] userid);
    
	/**
	 * 查询所有
	 * @param param
	 * @return
	 */
	List<SysMenuExt> selectAll(String param);
	
	List<SysMenu> getByNameOfAdmin(String currentUsername);

	List<SysMenu> getByOtherName(String currentUsername);

}