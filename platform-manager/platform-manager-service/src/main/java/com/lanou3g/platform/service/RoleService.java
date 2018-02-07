package com.lanou3g.platform.service;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.SysMenu;
import com.lanou3g.platform.pojo.SysRole;
import com.lanou3g.platform.pojo.SysUser;

/**
 * 
 * @Description 角色业务逻辑
 * @author Denny
 * @date 创建时间：2018年1月30日 上午9:19:58 
 * @version 1.0
 */
public interface RoleService {

	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	SysRole findById(int id);
	
	/**
	 * 带分页的条件查询
	 * @param currentPage
	 * @param rows
	 * @param param
	 * @return
	 */
	PageBean findRoleByPage(int currentPage, int rows, String param);
	
	/**
	 * 添加
	 * @param role
	 * @return
	 */
	int addRole(SysRole role);
	
	/**
	 * 根据id更新数据
	 * @param role
	 * @return
	 */
	int updateRole(SysRole role);
	
	/**
	 * 根据id进行删除
	 * @param id
	 * @return
	 */
	int deleteRole(int[] id);
	
	/**
	 * 根据名称进行查找
	 * @param name
	 * @return
	 */
	SysRole  findByParam(SysRole role, int type);
 
}
