package com.lanou3g.platform.service.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.SysRoleMapper;
import com.lanou3g.platform.pojo.SysMenu;
import com.lanou3g.platform.pojo.SysMenuExample;
import com.lanou3g.platform.pojo.SysRole;
import com.lanou3g.platform.pojo.SysRoleExample;
import com.lanou3g.platform.pojo.SysRoleExample.Criteria;
import com.lanou3g.platform.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private SysRoleMapper sysRoleMapper;

	@Override
	public SysRole findById(int id) {
		return sysRoleMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageBean findRoleByPage(int currentPage, int rows, String param) {
		// 1.定义分页信息
		PageHelper.startPage(currentPage, rows);
		// 排序
		PageHelper.orderBy("id desc");
		// 2. 定义查询条件
		SysRoleExample example = new SysRoleExample();
		Criteria criteria = example.createCriteria();

		// 2.1 模糊查询名称
		if (StringUtils.isNotBlank(param)) {
			criteria.andNameLike("%" + param + "%");
		}

		// 3. 进行查询 并返回
		List<SysRole> list = sysRoleMapper.selectByExample(example);
		 

		// 4.定义PageInfo
		PageInfo<SysRole> pageInfo = new PageInfo<>(list);

		// 5. 定义PageBean
		PageBean pagebean = new PageBean();
		pagebean.setTotal(pageInfo.getTotal());
		pagebean.setRows(list);
		// 开始的第几条位置
		pagebean.setStartIdx((currentPage - 1) * rows + 1);
		// 结束的第几条位置
		pagebean.setEndIdx(pagebean.getStartIdx() + pageInfo.getSize() - 1);
		// 总页数
		int pageCount = (int) (pagebean.getTotal() + rows - 1) / rows;
		pagebean.setPageCount(pageCount);

		return pagebean;
	}

	@Override
	public int addRole(SysRole role) {
		// 1.判断
		if (StringUtils.isBlank(role.getName())) {
			// 名称为空
			return 401;
		}
		 

		// 2.补全部分数据
		role.setCreateTime(new Date());
		role.setUpdateTime(new Date());

		// 3.添加操作
		return sysRoleMapper.insertSelective(role);
	}

	@Override
	public int updateRole(SysRole role) {
		// 1.判断
		if (StringUtils.isBlank(role.getName())) {
			// 名称为空
			return 401;
		}

		// 条件
		SysRoleExample example = new SysRoleExample();
		Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(role.getId());

		// 更新时间
		role.setUpdateTime(new Date());

		// 更新数据
		return sysRoleMapper.updateByExampleSelective(role, example);
	}

	@Override
	public int deleteRole(int[] id) {
		return sysRoleMapper.deleteRole(id);
	}

	@Override
	public SysRole findByParam(SysRole role, int type) {
		// 1 定义条件
		SysRoleExample example = new SysRoleExample();
		Criteria criteria = example.createCriteria();
		if(type == 1){
			// 名称
			criteria.andNameEqualTo(role.getName());
		}  
		// 2 查找
		List<SysRole> list = sysRoleMapper.selectByExample(example);
		
		// 3 返回
		if(list!=null && list.size() >0){
			return list.get(0);
		}
		return null;
	}

}
