package com.lanou3g.platform.web.action;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import com.lanou3g.platform.pojo.SysUser;
import com.lanou3g.platform.service.MenuService;

/**
 * menu控制器
 * @Description 
 * @author Denny
 * @date 创建时间：2018年2月2日 上午11:41:35 
 * @version 1.0
 */
@Controller
public class MenuController {
	
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
	@RequestMapping("/menu/menulist")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		try {
			searchparam = new String(searchparam.getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return "null";
		}

		// 1. 调用service
		PageBean pageBean = menuService.findMenuByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);

		return "menu/menu-list";
	}
	
	@RequestMapping("/menu/preadd")
	public String preAdd(Model model, 
			HttpSession session){
		// 从session中获取到数据
		SysUser user = (SysUser) session.getAttribute("userBySession"); 
		model.addAttribute("user", user);
		return "menu/menu-add";
	}
	
	/**
	 * 增加按钮
	 * @param menu
	 * @param password2
	 * @return
	 */
 	@RequestMapping("/menu/add")
	@ResponseBody
	public String add(SysMenu menu){
		// 增加
		int menuret = menuService.addMenu(menu);
		return menuret + "";
	}
 	
	/**
	 * 修改前
	 * @return
	 */
	@RequestMapping("/menu/predit")
	public String preEdit(int id, Model model,HttpSession session){
		// 从session中获取到数据
		SysUser user = (SysUser) session.getAttribute("userBySession"); 
		SysMenu menu = menuService.findById(id);
		model.addAttribute("menu", menu);
		model.addAttribute("user", user);
 
		return "menu/menu-edit";
	}
	
	/**
	 * 进行修改
	 * @param menu
	 * @return
	 */
	@RequestMapping("/menu/edit")
	@ResponseBody
	public String edit(SysMenu menu,  Model model){
		int menuret = menuService.updateMenu(menu);
		return menuret + "";
	}
	
	/**
	 * 删除
	 * @param ids
	 */
	@RequestMapping("/menu/delete")
	@ResponseBody
	public void delete(@RequestParam(value="ids[]")int[] ids){
		menuService.deleteMenu(ids);
	}
	
	/**
	 * 检测是否存在 1 = 名称 2 = urlkey 3 = url
	 * 
	 * @param param
	 * @param type
	 * @return
	 */
	@RequestMapping("/menu/check/{type}")
	@ResponseBody
	public String checkParam(SysMenu param, 
			@PathVariable int type){
		SysMenu menu = menuService.findByParam(param, type);
		if( menu != null){
			return "{\"valid\":false}"; // 不可用  
		}
		return "{\"valid\":true}"; // 可用
	}
	
	/**
	 * 根据fuid获取到menu
	 * @param parentId
	 * @return
	 */
	@RequestMapping("/findMenuByPId")
	@ResponseBody
	public List<SysMenu> findByParentId(int parentId){
		System.out.println("-----findByParentId :" +parentId );
		return  menuService.findAll(parentId);
	}
	
}
