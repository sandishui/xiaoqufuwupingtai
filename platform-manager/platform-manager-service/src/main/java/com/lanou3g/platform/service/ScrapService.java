package com.lanou3g.platform.service;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.Scrap; 

/**
 * 
 * @Description 废品业务逻辑
 * @author Jack
 * @date 创建时间：2018年2月1日 
 * @version 1.0
 */
public interface ScrapService {
	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	Scrap findById(int id);
	/**
	 * 带分页的条件查询
	 * @param currentPage
	 * @param rows
	 * @param param
	 * @return
	 */
	PageBean findDictByPage(int currentPage, int rows, String param);
	
	/**
	 * 添加用户
	 * @param user 
	 * @return
	 */
	int addScrap(Scrap scrap);
	
	/**
	 * 根据id更新数据
	 * @param dict
	 * @return
	 */
	int updateScrap(Scrap scrap);
	
	/**
	 * 根据id进行删除
	 * @param dictid
	 * @return
	 */
	int deleteScrap(int[] scrapId);
	
}
