package com.lanou3g.platform.service;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.SysRole;
import com.lanou3g.platform.pojo.SysRoleMenu;

/**
 * RoleMenu业务逻辑
 * @Description 
 * @author Denny
 * @version 1.0
 */
public interface RoleMenuService {


	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	SysRoleMenu findById(int id);
	
	/**
	 * 根据角色id获取
	 * @param roleId
	 * @return
	 */
	SysRoleMenu findByRole(int roleId);
	
 
	 
	/**
	 * 添加
	 * @param roleMenu
	 * @return
	 */
	int addRoleMenu(SysRoleMenu roleMenu);
	
	/**
	 * 根据id更新数据
	 * @param roleMenu
	 * @return
	 */
	int updateRoleMenu(SysRoleMenu roleMenu);
	
	/**
	 * 根据id进行删除
	 * @param id
	 * @return
	 */
	int deleteRoleMenu(int[] id);
	
 
}
