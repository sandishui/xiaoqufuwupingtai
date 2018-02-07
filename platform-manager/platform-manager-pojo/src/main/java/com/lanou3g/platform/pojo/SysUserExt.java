package com.lanou3g.platform.pojo;

import java.util.Set;

/**
 * SysUser的扩展类
 * @Description 
 * @author Denny
 * @date 创建时间：2018年2月7日 上午10:23:34 
 * @version 1.0
 */
public class SysUserExt extends SysUser {

	/*private Set<SysRole> roles;

	public Set<SysRole> getRoles() {
		return roles;
	}

	public void setRoles(Set<SysRole> roles) {
		this.roles = roles;
	}*/
	
	private  SysRole  roles;

	public SysRole getRoles() {
		return roles;
	}

	public void setRoles(SysRole roles) {
		this.roles = roles;
	}
	
}
