package com.lanou3g.platform.service;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.Owner; 
/**
 * 
 * @Description 业主列表业务逻辑
 * @author Jack
 * @date 创建时间：2018年2月2日 
 * @version 1.0
 */
public interface OwnerService {
	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	Owner findById(int id);
	
	/**
	 * 带分页的条件查询
	 * @param currentPage
	 * @param rows
	 * @param param
	 * @return
	 */
	PageBean findOwnerByPage(int currentPage, int rows, String param);
}
