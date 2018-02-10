package com.lanou3g.platform.service;

import java.util.List;

import com.lanou3g.platform.common.PageBean; 
import com.lanou3g.platform.pojo.SysDict;

/**
 * 
 * @Description 字典表业务逻辑
 * @author Jack
 * @date 创建时间：2018年2月1日 
 * @version 1.0
 */
public interface DictService {
	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	SysDict findById(int id);
	
	/**
	 * 带分页的条件查询
	 * @param currentPage
	 * @param rows
	 * @param param
	 * @return
	 */
	PageBean findDictByPage(int currentPage, int rows, String param);
	/**
	 * 
	 * */
	List<SysDict> findDictByTabColumn(String tabName,String colName);
	/**
	 * 添加用户
	 * @param user 
	 * @return
	 */
	int addDict(SysDict dict);
	
	/**
	 * 根据id更新数据
	 * @param dict
	 * @return
	 */
	int updateDict(SysDict dict);
	
	/**
	 * 根据id进行删除
	 * @param dictid
	 * @return
	 */
	int deleteDict(int[] dictId);
	
}
