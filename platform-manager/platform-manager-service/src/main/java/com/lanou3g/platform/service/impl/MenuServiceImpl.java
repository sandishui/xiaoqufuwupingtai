package com.lanou3g.platform.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.SysMenuMapper;
import com.lanou3g.platform.pojo.SysMenu;
import com.lanou3g.platform.pojo.SysMenuExample;
import com.lanou3g.platform.pojo.SysMenuExample.Criteria;
import com.lanou3g.platform.pojo.SysMenuExt;
import com.lanou3g.platform.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private SysMenuMapper sysMenuMapper;
	
	@Override
	public SysMenu findById(int id) {
		return sysMenuMapper.selectByPrimaryKey(id);
	}

/*	@Override
	public PageBean findMenuByPage(int currentPage, int rows, String param) {

		// 1.定义分页信息
		PageHelper.startPage(currentPage, rows);
		// 排序
		PageHelper.orderBy("id desc");
		// 2. 定义查询条件
		SysMenuExample example = new SysMenuExample();
		Criteria criteria = example .createCriteria();

		// 2.1 模糊查询名称
		if (StringUtils.isNotBlank(param)) {
			criteria.andNameLike("%"+param+"%");
		}

		// 3. 进行查询 并返回
		List<SysMenu> list = sysMenuMapper.selectByExample(example);

		// 4.定义PageInfo
		PageInfo<SysMenu> pageInfo = new PageInfo<>(list);

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
	}*/
	
	@Override
	public PageBean findMenuByPage(int currentPage, int rows, String param) {
		
		// 1.定义分页信息
		PageHelper.startPage(currentPage, rows);
		// 排序
		PageHelper.orderBy("id desc");
		// 2. 定义查询条件
		SysMenuExample example = new SysMenuExample();
		Criteria criteria = example .createCriteria();
		
		
		// 3. 进行查询 并返回
		List<SysMenuExt> list = sysMenuMapper.selectAll(param);
		
		// 4.定义PageInfo
		PageInfo<SysMenuExt> pageInfo = new PageInfo<>(list);
		
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
	public int addMenu(SysMenu menu) {
		// 1.判断
		if(StringUtils.isBlank(menu.getName())){
			// 用户名为空
			return 401;
		}
		
		if(StringUtils.isBlank(menu.getUrlkey())){
			// urlkey不能为空
			return 402;
		}
		
		if(StringUtils.isBlank(menu.getType()+"") ){
			// 类型不能为空
			return 403;
		}
		
		if(StringUtils.isBlank(menu.getStatus()+"") ){
			// 状态不能为空
			return 404;
		}
		
		if(StringUtils.isBlank(menu.getParentId()+"") ){
			// parentid
			return 405;
		}
		
		// 2.补全部分数据
		// ---角色
		// ---创建者
		menu.setCreateTime(new Date());
		menu.setUpdateTime(new Date());
		
	 
		// 3.添加操作
		return sysMenuMapper.insertSelective(menu);
	}

	@Override
	public int updateMenu(SysMenu menu) {
		// 1.判断
		if(StringUtils.isBlank(menu.getName())){
			// 名称为空
			return 401;
		}
		
		if(StringUtils.isBlank(menu.getUrlkey())){
			// urlkey为空
			return 402;
		}
		
		if(StringUtils.isBlank(menu.getType()+"") ){
			// 类型为空
			return 403;
		}
		
		if(StringUtils.isBlank(menu.getStatus()+"") ){
			// 状态为空
			return 404;
		}
		
		if(StringUtils.isBlank(menu.getParentId()+"") ){
			// parentid
			return 405;
		}
		// 条件
		SysMenuExample example = new SysMenuExample();
		Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(menu.getId());
		
		// 更新时间
		menu.setUpdateTime(new Date());
		
		// 更新数据
		return sysMenuMapper.updateByExampleSelective(menu, example);
	}

	@Override
	public int deleteMenu(int[] id) {
		return sysMenuMapper.deleteMenu(id);
	}

	@Override
	public SysMenu findByParam(SysMenu menu, int type) {
		// 1 定义条件
		SysMenuExample example = new SysMenuExample();
		Criteria criteria = example.createCriteria();
		if(type == 1){
			// 名称
			criteria.andNameEqualTo(menu.getName());
		} else if(type == 2){
			// urlkey
			criteria.andUrlkeyEqualTo(menu.getUrlkey());
		} else if( type==3){
			// url
			criteria.andUrlEqualTo(menu.getUrl());
		}
	
		// 2 查找
		List<SysMenu> list = sysMenuMapper.selectByExample(example);
		
		// 3 返回
		if(list!=null && list.size() >0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<SysMenu> findAll(int parentId) {
		// 1. 定义条件
		SysMenuExample example = new SysMenuExample();
		Criteria criteria = example.createCriteria();
		criteria.andParentIdEqualTo(parentId);
		
		// 2. 进行查询
		List<SysMenu> list = sysMenuMapper.selectByExample(example);
		
		if(list != null && list.size() >0){
			return list;
		}
		
		return new ArrayList<SysMenu>();
	}

	@Override
	public List<SysMenu> getByUsername(String currentUsername) {
		List<SysMenu> menus = new ArrayList<SysMenu>();
		if(currentUsername.equals("admin")){
			menus = sysMenuMapper.getByNameOfAdmin(currentUsername);
		}else{
			menus = sysMenuMapper.getByOtherName(currentUsername);
		}
		return menus;
	}

	
	
}
