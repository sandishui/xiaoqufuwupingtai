package com.lanou3g.platform.service;

import java.util.List;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.SysMenu;

/**
 * 
 * @Description 菜单业务逻辑
 * @author Denny
 * @date 创建时间：2018年1月30日 上午9:19:58 
 * @version 1.0
 */
public interface MenuService {

	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	SysMenu findById(int id);
	
	/**
	 * 带分页的条件查询
	 * @param currentPage
	 * @param rows
	 * @param param
	 * @return
	 */
	PageBean findMenuByPage(int currentPage, int rows, String param);
	
	/**
	 * 添加
	 * @param menu
	 * @return
	 */
	int addMenu(SysMenu menu);
	
	/**
	 * 根据id更新数据
	 * @param menu
	 * @return
	 */
	int updateMenu(SysMenu menu);
	
	/**
	 * 根据id进行删除
	 * @param id
	 * @return
	 */
	int deleteMenu(int[] id);
	
	/**
	 * 根据名称进行查找
	 * @param name
	 * @return
	 */
	SysMenu  findByParam(SysMenu menu, int type);
	
	
	/**
	 * 获取到所有的menu
	 * @return
	 */
	List<SysMenu>  findAll(int  parentId);
 
}
