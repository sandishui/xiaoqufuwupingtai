package com.lanou3g.platform.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.OwnerMapper;
import com.lanou3g.platform.pojo.Owner;
import com.lanou3g.platform.pojo.OwnerExample;
import com.lanou3g.platform.pojo.OwnerExample.Criteria;
import com.lanou3g.platform.service.OwnerService;
@Service
public class OwnerServiceImpl implements OwnerService {
	@Autowired
	private OwnerMapper ownerMapper;
	@Override
	public Owner findById(int id) { 
		return ownerMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageBean findOwnerByPage(int currentPage, int rows, String param) {
		// 1.定义分页信息
		PageHelper.startPage(currentPage, rows);
		// 排序
//		PageHelper.orderBy("id");
		// 2. 定义查询条件
		OwnerExample example = new OwnerExample();
		Criteria criteria = example.createCriteria();

		// 2.1 模糊查询用户名
		if (StringUtils.isNotBlank(param)) {
			criteria.andNameLike("%"+param+"%");
		}

		// 3. 进行查询 并返回
		List<Owner> list = ownerMapper.selectByExample(example);

		// 4.定义PageInfo
		PageInfo<Owner> pageInfo = new PageInfo<>(list);

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
