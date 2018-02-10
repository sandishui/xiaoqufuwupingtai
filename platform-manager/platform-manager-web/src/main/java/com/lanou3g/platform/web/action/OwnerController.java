package com.lanou3g.platform.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.service.OwnerService;

 
/**
 * 
 * @Description 字典表业务逻辑
 * @author Jack
 * @date 创建时间：2018年2月1日 
 * @version 1.0
 */
@Controller
public class OwnerController {
	@Autowired
	private OwnerService ownerService;
 
	
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/owner/ownerlist")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		// 1. 调用service
		PageBean pageBean = ownerService.findOwnerByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);
		
		return "owner/owner-list";
	}
 
}
