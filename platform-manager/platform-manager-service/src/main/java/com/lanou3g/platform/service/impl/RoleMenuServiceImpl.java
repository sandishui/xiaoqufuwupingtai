package com.lanou3g.platform.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanou3g.platform.dao.SysRoleMenuMapper;
import com.lanou3g.platform.pojo.SysRoleMenu;
import com.lanou3g.platform.pojo.SysRoleMenuExample;
import com.lanou3g.platform.pojo.SysRoleMenuExample.Criteria;
import com.lanou3g.platform.service.RoleMenuService;

@Service
public class RoleMenuServiceImpl implements RoleMenuService {

	@Autowired
	private SysRoleMenuMapper sysRoleMenuMapper;
	
	@Override
	public SysRoleMenu findById(int id) {
		return sysRoleMenuMapper.selectByPrimaryKey(id);
	}

	 

	@Override
	public int addRoleMenu(SysRoleMenu roleMenu) {
		 
		return sysRoleMenuMapper.insertSelective(roleMenu);
	}

	@Override
	public int updateRoleMenu(SysRoleMenu roleMenu) {
		SysRoleMenuExample example = new SysRoleMenuExample();
		Criteria criteria = example.createCriteria();
		criteria.andRoleidEqualTo(roleMenu.getRoleid());
		return sysRoleMenuMapper.updateByExampleSelective(roleMenu, example );
	}

	@Override
	public int deleteRoleMenu(int[] id) {
		return sysRoleMenuMapper.deleteRoleMenu(id);
	}


	@Override
	public SysRoleMenu findByRole(int roleId) {
		// 定义条件
		SysRoleMenuExample example = new SysRoleMenuExample();
		Criteria criteria = example.createCriteria();
		criteria.andRoleidEqualTo(roleId);
		// 根据条件进行查询
		List<SysRoleMenu> list = sysRoleMenuMapper.selectByExample(example);
		
		if(list!=null && list.size()>0){
			return list.get(0);
		}
		
		return null;
	}

 

}
