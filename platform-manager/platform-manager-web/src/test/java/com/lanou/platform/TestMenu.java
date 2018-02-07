package com.lanou.platform;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.SysMenu;
import com.lanou3g.platform.pojo.SysMenuExt;
import com.lanou3g.platform.pojo.SysRole;
import com.lanou3g.platform.pojo.SysUser;
import com.lanou3g.platform.pojo.SysUserExt;
import com.lanou3g.platform.service.MenuService;
import com.lanou3g.platform.service.UserService;


 
public class TestMenu {

	@Test
	public void testList() throws Exception {
		String path = "classpath:spring/*.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(path);
		MenuService bean = context.getBean("menuServiceImpl", MenuService.class);
		
		PageBean findByPage = bean.findMenuByPage(1, 10, "2");
		
		System.out.println(findByPage.getTotal());
		System.out.println(findByPage.getRows().size());
	 
		List<SysMenuExt> rows = (List<SysMenuExt>) findByPage.getRows();
		for (SysMenuExt sysMenuExt : rows) {
			 String menus = sysMenuExt.getPname();
			System.out.println(sysMenuExt );
		}
		
	}
	
	@Test
	public void testAdd() throws Exception {
		String path = "classpath:spring/*.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(path);
		UserService bean = context.getBean("userServiceImpl", UserService.class);
		
		SysUser user = new SysUser();
		user.setUsername("zhangsan2");
		user.setPassword("1232");
		user.setGender(true);
		user.setTel("12345678");
		user.setEmail("1@1.com"); 
		user.setRoleId(1);
		user.setRemark("remarkremark");
		
		int addUser = bean.addUser(user , "1232");
		
		System.out.println("增加: " + addUser);
		
	}
	
	
	@Test
	public void testUpdate() throws Exception {
		String path = "classpath:spring/*.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(path);
		UserService bean = context.getBean("userServiceImpl", UserService.class);
		
		SysUser user = new SysUser();
		user.setId(1527);
		user.setUsername("zhangsan333");
		user.setPassword("1232");
		user.setGender(true);
		user.setTel("12345678333");
		user.setEmail("1@1.com"); 
		user.setRoleId(1);
		user.setRemark("remarkremark");
		
		int upUser = bean.updateUser(user, "1232");
		
		System.out.println("更新: " + upUser);
		
	}
	
	
	@Test
	public void testDel() throws Exception {
		String path = "classpath:spring/*.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(path);
		UserService bean = context.getBean("userServiceImpl", UserService.class);
		
		SysUser user = new SysUser();
		user.setId(1527);
 
		int deletUser = bean.deleteUser(new int[]{1526,1525});
		
		System.out.println("删除: " + deletUser); 
		
	}
	
}
