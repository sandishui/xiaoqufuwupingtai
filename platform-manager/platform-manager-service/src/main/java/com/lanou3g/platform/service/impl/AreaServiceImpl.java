package com.lanou3g.platform.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanou3g.platform.dao.AreaMapper;
import com.lanou3g.platform.pojo.Area;
import com.lanou3g.platform.pojo.AreaExample;
import com.lanou3g.platform.service.AreaService;
@Service
public class AreaServiceImpl implements AreaService {
	@Autowired
	private AreaMapper areaMapper;
	@Override
	public Area findById(int id) { 
		return areaMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Area> findAreaByPid(int pid) { 
		System.out.println(pid);
		AreaExample example=new AreaExample();
		List<String> w=new ArrayList();
		w.add(pid+"");
		example.createCriteria().andParentCodeIn(w);
		return areaMapper.selectByExample(example);
	}

}
