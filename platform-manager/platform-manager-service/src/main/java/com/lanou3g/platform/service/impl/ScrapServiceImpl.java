package com.lanou3g.platform.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.ScrapMapper;
import com.lanou3g.platform.pojo.Scrap;
import com.lanou3g.platform.pojo.ScrapExample;
import com.lanou3g.platform.service.ScrapService;
@Service
public class ScrapServiceImpl implements ScrapService {
	@Autowired
	private ScrapMapper scrapMapper;
	@Override
	public Scrap findById(int id) {
		// TODO Auto-generated method stub
		return scrapMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageBean findDictByPage(int currentPage, int rows, String param) {
		 PageHelper.startPage(currentPage, rows);
		 ScrapExample example=new ScrapExample();
		 if(StringUtils.isNotBlank(param))
		 example.createCriteria().andScrapNameLike("%"+param+"%");
		List<Scrap> list= scrapMapper.selectByExample(example);
	
		PageBean pagebean=new PageBean();
		PageInfo<Scrap> pageInfo=new PageInfo<>(list);
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
	public int addScrap(Scrap scrap) { 
		return scrapMapper.insert(scrap);
	}

	@Override
	public int updateScrap(Scrap scrap) {
		 ScrapExample example=new ScrapExample();
		 example.createCriteria().andIdEqualTo(scrap.getId());
		return scrapMapper.updateByExample(scrap, example);
	}

	@Override
	public int deleteScrap(int[] scrapId) {
		// TODO Auto-generated method stub
		return scrapMapper.deleteById(scrapId);
	}

}
