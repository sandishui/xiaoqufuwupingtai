package com.lanou3g.platform.service;

import java.util.List;

import com.lanou3g.platform.pojo.Area;
 

/**
 * 
 * @Description 小区业务逻辑
 * @author Jack
 * @date 创建时间：2018年2月1日 
 * @version 1.0
 */
public interface AreaService {
	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	Area findById(int id);
	/**
	 * 根据paretnid进行查询
	 * @param parentid
	 * @return
	 */
	List<Area> findAreaByPid(int pid);
}
