package com.lanou3g.platform.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.HousingEstateMapper;
import com.lanou3g.platform.pojo.HousingEstate;
import com.lanou3g.platform.pojo.HousingEstateExample; 
import com.lanou3g.platform.pojo.HousingEstateExample.Criteria;
import com.lanou3g.platform.service.HousingEstateService;
@Service
public class HousingEstateServiceImpl implements HousingEstateService {
	@Autowired
	private HousingEstateMapper housingEstateMapper;
	@Override
	public HousingEstate findById(int id) {
		 
		return housingEstateMapper.selectByPrimaryKey(id);
	}
	@Override
	public PageBean findHousingEstateByPage(int currentPage, int rows,
			String param) { 
		PageHelper.startPage(currentPage, rows);
		HousingEstateExample example=new HousingEstateExample();
		Criteria criteria= example.createCriteria();
		if(StringUtils.isNotBlank(param))
			criteria.andNameLike("%"+param+"%");
		List<HousingEstate> list=housingEstateMapper.selectByExample(example);
		PageInfo<HousingEstate> pageInfo = new PageInfo<>(list);

		// 5. 定义PageBean
		PageBean pagebean = new PageBean();
		pagebean.setTotal(pageInfo.getTotal());
		pagebean.setRows(list);
		// 开始的第几条位置
 		pagebean.setStartIdx( (currentPage-1)*rows + 1  );
		// 结束的第几条位置
		pagebean.setEndIdx( pagebean.getStartIdx()+pageInfo.getSize() -1);
		// 总页数
		int pageCount = (int)(pagebean.getTotal() + rows -1)/ rows ;
		pagebean.setPageCount(pageCount);
		
		return pagebean;
	}
	@Override
	public int addHousingEstate(HousingEstate housingEstate) { 
		return housingEstateMapper.insert(housingEstate);
	}
	@Override
	public int updateHousingEstate(HousingEstate housingEstate) { 
		HousingEstateExample example=new HousingEstateExample();
		Criteria criteria=example.createCriteria();
		criteria.andIdEqualTo(housingEstate.getId());
		return housingEstateMapper.updateByExample(housingEstate, example);
	}
	@Override
	public int deleteHousingEstate(int[] housingEstateId) { 
		return housingEstateMapper.deleteHousingEstate(housingEstateId);
	}
	@Override
	public List<HousingEstate> findByTabCol(String pCode,String cCode) {
		 HousingEstateExample example=new HousingEstateExample();
		 Criteria c=example.createCriteria();
		 c.andProvinceCodeEqualTo(pCode);
		 c.andCityCodeEqualTo(cCode);
		return housingEstateMapper.selectByExample(example);
	} 
}
