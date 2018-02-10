package com.lanou3g.platform.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.ScrapCollectorMapper;
import com.lanou3g.platform.pojo.ScrapCollector;
import com.lanou3g.platform.pojo.ScrapCollectorExample;
import com.lanou3g.platform.service.ScrapCollectorService;
@Service
public class ScrapServiceCollectorImpl implements ScrapCollectorService {
	@Autowired
	private ScrapCollectorMapper scrapCollectorMapper;
	@Override
	public ScrapCollector findById(int id) {
		// TODO Auto-generated method stub
		return scrapCollectorMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageBean findDictByPage(int currentPage, int rows, String param) {
		 PageHelper.startPage(currentPage, rows);
		 ScrapCollectorExample example=new ScrapCollectorExample();
		 if(StringUtils.isNotBlank(param))
		 example.createCriteria().andNameLike("%"+param+"%");
		List<ScrapCollector> list= scrapCollectorMapper.selectByExample(example);
	
		PageBean pagebean=new PageBean();
		PageInfo<ScrapCollector> pageInfo=new PageInfo<>(list);
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
	public int addScrapCollector(ScrapCollector scrapCollector) { 
		return scrapCollectorMapper.insert(scrapCollector);
	}

	@Override
	public int updateScrapCollector(ScrapCollector scrapCollector) {
		 ScrapCollectorExample example=new ScrapCollectorExample();
		 example.createCriteria().andIdEqualTo(scrapCollector.getId());
		return scrapCollectorMapper.updateByExample(scrapCollector, example);
	}

	@Override
	public int deleteScrapCollector(int[] scrapCollectorId) {
		// TODO Auto-generated method stub
		return scrapCollectorMapper.deleteById(scrapCollectorId);
	}

}
