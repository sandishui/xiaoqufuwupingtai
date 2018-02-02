package com.lanou3g.platform.service.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.dao.SysUserMapper;
import com.lanou3g.platform.pojo.SysUser;
import com.lanou3g.platform.pojo.SysUserExample;
import com.lanou3g.platform.pojo.SysUserExample.Criteria;
import com.lanou3g.platform.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private SysUserMapper sysUserMapper;

	@Override
	public PageBean findUserByPage(int currentPage, int rows, String param) {

		// 1.定义分页信息
		PageHelper.startPage(currentPage, rows);
		// 排序
		PageHelper.orderBy("id desc");
		// 2. 定义查询条件
		SysUserExample example = new SysUserExample();
		Criteria criteria = example.createCriteria();

		// 2.1 模糊查询用户名
		if (StringUtils.isNotBlank(param)) {
			criteria.andUsernameLike("%"+param+"%");
		}

		// 3. 进行查询 并返回
		List<SysUser> list = sysUserMapper.selectByExample(example);

		// 4.定义PageInfo
		PageInfo<SysUser> pageInfo = new PageInfo<>(list);

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
	public int addUser(SysUser user, String pwd2) {
		
		// 1.判断
		if(StringUtils.isBlank(user.getUsername())){
			// 用户名为空
			return 401;
		}
		
		if(StringUtils.isBlank(pwd2)){
			// 确认密码不能为空
			return 402;
		}
		
		if( !pwd2.equals( user.getPassword())){
			// 两次密码不一致
			return 403;
		}
		
		// 2.补全部分数据
		// ---角色
		// ---创建者
		user.setCreateTime(new Date());
		user.setUpdateTime(new Date());
		
		user.setPassword( DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		// 3.添加操作
		return sysUserMapper.insertSelective(user);
	}
	
	@Override
	public int updateUser(SysUser user, String pwd2) {
		// 1.判断
		if(StringUtils.isBlank(user.getUsername())){
			// 用户名为空
			return 401;
		}
		
		if(StringUtils.isBlank(pwd2)){
			// 确认密码不能为空
			return 402;
		}
		
		if( !pwd2.equals( user.getPassword())){
			// 两次密码不一致
			return 403;
		}
		
		// 条件
		SysUserExample example = new SysUserExample();
		Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo( user.getId());
		
		// 更新数据
		// ---更新者
		user.setPassword( DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		
		return sysUserMapper.updateByExampleSelective(user, example );
	}

	@Override
	public int deleteUser(int[] userid) {
		return sysUserMapper.deleteUser(userid);
	}

	@Override
	public SysUser findById(int id) {
		return sysUserMapper.selectByPrimaryKey(id);
	}

	@Override
	public SysUser findByParam(SysUser user, int type){
		
		// 1 定义条件
		SysUserExample example = new SysUserExample();
		Criteria criteria = example.createCriteria();
		
		if(type == 1){
			// 用户名
			criteria.andUsernameEqualTo(user.getUsername());
		} else if(type == 2){
			// 电话
			criteria.andTelEqualTo(user.getTel());
		} else if( type==3){
			// 邮箱
			criteria.andEmailEqualTo(user.getEmail());
		}

		// 2 查找
		List<SysUser> list = sysUserMapper.selectByExample(example);
		
		// 3 返回
		if(list!=null && list.size() >0){
			return list.get(0);
		}
		
		return null;
	}
 
	
	
	
}
