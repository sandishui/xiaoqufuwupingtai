package com.lanou3g.platform.service;

import java.util.List;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.SysUser;

/**
 * 
 * @Description 用户业务逻辑
 * @author Denny
 * @version 1.0
 */
public interface UserService {

	/**
	 * 根据id进行查询
	 * @param id
	 * @return
	 */
	SysUser findById(int id);
	
	/**
	 * 带分页的条件查询
	 * @param currentPage
	 * @param rows
	 * @param param
	 * @return
	 */
	PageBean findUserByPage(int currentPage, int rows, String param);
	
	/**
	 * 添加用户
	 * @param user
	 * @param pwd2
	 * @return
	 */
	int addUser(SysUser user,  String pwd2);
	
	/**
	 * 根据id更新数据
	 * @param user
	 * @return
	 */
	int updateUser(SysUser user,  String pwd2);
	
	/**
	 * 根据id进行删除
	 * @param userid
	 * @return
	 */
	int deleteUser(int[] userid);
	
	/**
	 * 根据用户名称进行查找
	 * @param name
	 * @return
	 */
	SysUser  findByParam(SysUser param, int type);
	
 
	/**
	 * 登录
	 * @param name
	 * @param pwd
	 * @return
	 */
	SysUser login(String name, String pwd);
	
	/**
	 * 更新状态: 启动
	 * @param id
	 * @param state
	 * @return
	 */
	int updateStateStart(Integer[] ids);
	
	/**
	 * 更新状态: 停用
	 * @param id
	 * @param state
	 * @return
	 */
	int updateStateStop(Integer[] ids);
}
