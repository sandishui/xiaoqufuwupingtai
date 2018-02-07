package com.lanou3g.platform.web.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.SysMenu;
import com.lanou3g.platform.pojo.SysRole;
import com.lanou3g.platform.pojo.SysRoleMenu;
import com.lanou3g.platform.pojo.SysUser;
import com.lanou3g.platform.service.MenuService;
import com.lanou3g.platform.service.RoleMenuService;
import com.lanou3g.platform.service.RoleService;

/**
 * role控制器
 * @Description 
 * @author Denny
 * @date 创建时间：2018年2月2日 上午11:41:35 
 * @version 1.0
 */
@Controller
public class RoleController {
	
	@Autowired
	private RoleService roleService;
	@Autowired
	private RoleMenuService roleMenuService;
 
	@Autowired
	private MenuService menuService;
	
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/role/rolelist")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		try {
			searchparam = new String(searchparam.getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return "null";
		}

		System.out.println("searchparam--------：" + searchparam);
		// 1. 调用service
		PageBean pageBean = roleService.findRoleByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);

		return "role/role-list";
	}
	
	@RequestMapping("/role/preadd")
	public String preAdd(Model model, 
			HttpSession session){
		// 从session中获取到数据
		SysUser user = (SysUser) session.getAttribute("userBySession"); 
		model.addAttribute("user", user);
		
		// 获取到menu
		List<SysMenu> list = menuService.findAll(0);
		model.addAttribute("listMenu", list);
		return "role/role-add";
	}
	
	
	
	/**
	 * 增加按钮
	 * @param role
	 * @param password2
	 * @return
	 */
 	@RequestMapping("/role/add")
	@ResponseBody
	public String add(SysRole role, int menuId){
		// 增加  :插入到 SysRole
		int roleret = roleService.addRole(role);
	 
		
		// 定义SysRoleMenu
		SysRoleMenu roleMenu = new SysRoleMenu();
		roleMenu.setMenuid(menuId);
		roleMenu.setRoleid(role.getId());
		roleMenuService.addRoleMenu(roleMenu );
		
		
		return roleret + "";
	}
 	
	/**
	 * 修改前
	 * @return
	 */
	@RequestMapping("/role/predit")
	public String preEdit(int id, Model model, HttpSession session){
		// 从session中获取到数据 : 用户
		SysUser user = (SysUser) session.getAttribute("userBySession"); 
		model.addAttribute("user", user);
		
		// 角色
		SysRole role = roleService.findById(id);
		model.addAttribute("role", role);
		
		// 权限
		SysRoleMenu sysRoleMenu = roleMenuService.findByRole(id);
		
		// menu 按钮
		SysMenu sysMenu = menuService.findById( sysRoleMenu.getMenuid());
		// 父 id
		Integer parentId = sysMenu.getParentId();
		model.addAttribute("menuPid", parentId);
		 
		// 子 id
		model.addAttribute("menuSid", sysRoleMenu.getMenuid());
		
		// 获取到menu
		List<SysMenu> list = menuService.findAll(0);
		model.addAttribute("listMenu", list);
		
		return "role/role-edit";
	}
	
	/**
	 * 进行修改
	 * @param role
	 * @return
	 */
	@RequestMapping("/role/edit")
	@ResponseBody
	public String edit(SysRole role,  int menuId, Model model){
		// 更新 role
		int roleret = roleService.updateRole(role);
		
		// 更新 rolemenu
		SysRoleMenu roleMenu = new SysRoleMenu();
		roleMenu.setMenuid(menuId);
		roleMenu.setRoleid(role.getId());
	 
		roleMenuService.updateRoleMenu(roleMenu);
		
		return roleret + "";
	}
	
	/**
	 * 删除
	 * @param ids
	 */
	@RequestMapping("/role/delete")
	@ResponseBody
	public void delete(@RequestParam(value="ids[]")int[] ids){
		roleService.deleteRole(ids);
	}
	
	/**
	 * 检测是否存在 1 = 名称 
	 * 
	 * @param param
	 * @param type
	 * @return
	 */
	@RequestMapping("/role/check/{type}")
	@ResponseBody
	public String checkParam(SysRole param, 
			@PathVariable int type){
		SysRole role = roleService.findByParam(param, type);
		if( role != null){
			return "{\"valid\":false}"; // 不可用  
		}
		return "{\"valid\":true}"; // 可用
	}
	
	

	
}
