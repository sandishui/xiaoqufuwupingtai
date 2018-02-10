package com.lanou3g.platform.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.OwnerMapper;
import com.lanou3g.platform.dao.ReclamationOrderMapper; 
import com.lanou3g.platform.pojo.Owner;
import com.lanou3g.platform.pojo.OwnerExample;
import com.lanou3g.platform.pojo.ReclamationOrder; 
import com.lanou3g.platform.pojo.ReclamationOrderExample;
import com.lanou3g.platform.pojo.ReclamationOrderExample.Criteria;
import com.lanou3g.platform.service.ReclamationOrderService;
@Service
public class ReclamationOrderServiceImpl implements ReclamationOrderService {
	@Autowired
	private ReclamationOrderMapper reclamationOrderMapper;
	@Autowired
	private OwnerMapper ownerMapper;
	
 
	@Override
	public PageBean findReclamationOrderByPage(int currentPage, int rows, String param,String updateTime) { 
 		ReclamationOrderExample example = new ReclamationOrderExample();
		Criteria criteria = example.createCriteria();
 		// 2.1 模糊查询用户名
		if (StringUtils.isNotBlank(param)) {
			OwnerExample ownerExample=new OwnerExample();
			com.lanou3g.platform.pojo.OwnerExample.Criteria
			c=ownerExample.createCriteria();
			c.andNameLike("%"+param+"%");
			List<Owner> list=ownerMapper.selectByExample(ownerExample);
			List<String> ls=new ArrayList<String>();
			ls.add("-1");
			for (Owner owner : list) {
				ls.add(owner.getId()+"");
			}
			criteria.andOwnerIdIn(ls);
		}
		if(updateTime!=null&&!"".equals(updateTime)){
			try {
				Date date=new SimpleDateFormat("yyyy-MM-dd").parse(updateTime);
				criteria.andUpdateTimeBetween(date, new Date(date.getTime()+1000*60*60*24));
			} catch (ParseException e) { 
				
			}
		}
		// 1.定义分页信息
		PageHelper.startPage(currentPage, rows);
		// 排序
		PageHelper.orderBy("update_time desc,create_time asc");
		// 2. 定义查询条件
		// 3. 进行查询 并返回
		List<ReclamationOrder> list = reclamationOrderMapper.selectByExample(example);
		// 4.定义PageInfo
		PageInfo<ReclamationOrder> pageInfo = new PageInfo<>(list); 
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
	
}
