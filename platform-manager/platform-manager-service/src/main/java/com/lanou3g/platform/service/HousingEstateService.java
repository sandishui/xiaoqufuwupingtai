package com.lanou3g.platform.service;

import java.util.List;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.HousingEstate;
 

/**
 * 
 * @Description 小区业务逻辑
 * @author Jack
 * @date 创建时间：2018年2月1日 
 * @version 1.0
 */
public interface HousingEstateService {
	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	HousingEstate  findById(int id);
	
	/**
	 * 带分页的条件查询
	 * @param currentPage
	 * @param rows
	 * @param param
	 * @return
	 */
	PageBean findHousingEstateByPage(int currentPage, int rows, String param); 
	/**
	 * 添加用户
	 * @param user 
	 * @return
	 */
	int addHousingEstate(HousingEstate housingEstate); 
	/**
	 * 根据id更新数据
	 * @param dict
	 * @return
	 */
	int updateHousingEstate(HousingEstate housingEstate); 
	/**
	 * 根据id进行删除
	 * @param housingEstateId
	 * @return
	 */
	int deleteHousingEstate(int [] housingEstateId);

	List<HousingEstate> findByTabCol(String pCode, String cCode); 
	
}
