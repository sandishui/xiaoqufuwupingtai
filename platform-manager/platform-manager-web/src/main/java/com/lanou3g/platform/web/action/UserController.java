package com.lanou3g.platform.web.action;

import java.util.Arrays;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.SysUser;
import com.lanou3g.platform.service.UserService;

/**
 * 
 * @Description 用户控制器
 * @author Denny
 * @date 创建时间：2018年1月30日 上午10:08:24 
 * @version 1.0
 */

@Controller
public class UserController {

	@Autowired
	private UserService userService;
 
	
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/user/userlist")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		// 1. 调用service
		PageBean pageBean = userService.findUserByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);
		
		return "user/user-list";
	}
	
	/**
	 * 增加用户
	 * @param user
	 * @param password2
	 * @return
	 */
	@RequestMapping("/user/add")
	public String add(SysUser user, String password2){
		// 增加
		int addUser = userService.addUser(user, password2);
		
		return "redirect:/user/userlist";
	}
	
	/**
	 * 修改前
	 * @return
	 */
	@RequestMapping("/user/predit")
	public String preEdit(int id, Model model){
		SysUser user = userService.findById(id);
		model.addAttribute("user", user);
		return "user/user-edit";
	}
	
	/**
	 * 进行修改
	 * @param user
	 * @param password2
	 * @return
	 */
	@RequestMapping("/user/edit")
	public String edit(SysUser user, String password2, Model model){
		userService.updateUser(user, password2);
		return "redirect:/user/userlist";
	}
	
	@RequestMapping("/user/delete")
	@ResponseBody
	public void delete(@RequestParam(value="ids[]")int[] ids){
		System.out.println("dddddddddd" + Arrays.toString(ids)  );
		userService.deleteUser(ids);
	}
	
}
