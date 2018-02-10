package com.lanou3g.platform.service;

import java.util.Date;

import com.lanou3g.platform.common.PageBean; 
import com.lanou3g.platform.pojo.ReclamationOrder;

/**
 * 
 * @Description 废品回收订单列表业务逻辑
 * @author Jack
 * @date 创建时间：2018年2月2日 
 * @version 1.0
 */
public interface ReclamationOrderService {
	 
  
		/**
		 * 带分页的条件查询
		 * @param currentPage
		 * @param rows
		 * @param param
		 * @param updateTime
		 * @return
		 */
	PageBean findReclamationOrderByPage(int currentPage, int rows,
			String param, String updateTime);
	
}
