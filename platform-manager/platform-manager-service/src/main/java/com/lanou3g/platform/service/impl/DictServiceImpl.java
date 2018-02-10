package com.lanou3g.platform.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.SysDictMapper;
import com.lanou3g.platform.pojo.SysDict;
import com.lanou3g.platform.pojo.SysDictExample;  
import com.lanou3g.platform.pojo.SysDictExample.Criteria; 
import com.lanou3g.platform.service.DictService;
@Service
public class DictServiceImpl implements DictService {
	@Autowired
	private SysDictMapper sysDictMapper;

	@Override
	public SysDict findById(int id) {
		return sysDictMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageBean findDictByPage(int currentPage, int rows, String param) { 
		// 1.定义分页信息
				PageHelper.startPage(currentPage, rows);
				// 排序
				PageHelper.orderBy("id desc,dict_sort asc");
				// 2. 定义查询条件
				SysDictExample example = new SysDictExample();
				Criteria criteria = example.createCriteria();

				// 2.1 模糊查询用户名
				if (StringUtils.isNotBlank(param)) {
					criteria.andDictTextLike("%"+param+"%");
				}

				// 3. 进行查询 并返回
				List<SysDict> list = sysDictMapper.selectByExample(example);

				// 4.定义PageInfo
				PageInfo<SysDict> pageInfo = new PageInfo<>(list);

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
	public int addDict(SysDict dict) { 
		return sysDictMapper.insert(dict);
	}

	@Override
	public int updateDict(SysDict dict) {
//		// 条件
				SysDictExample example = new SysDictExample();
				Criteria criteria = example.createCriteria();
				criteria.andIdEqualTo( dict.getId());
//				
//				// 更新数据
//				// ---更新者
//				user.setPassword( DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
				
				return sysDictMapper.updateByExampleSelective(dict, example );
		
//		return 0;
	}

	@Override
	public int deleteDict(int[] dictId) { 
		return sysDictMapper.deleteDict(dictId);
	}

	@Override
	public List<SysDict> findDictByTabColumn(String tabName, String colName) {
		SysDictExample example=new SysDictExample();
		Criteria c= example.createCriteria();
		c.andDictTabnameEqualTo(tabName);
		c.andDictColnameEqualTo(colName);
		return sysDictMapper.selectByExample(example);
	}
	
}
