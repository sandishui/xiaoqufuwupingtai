package com.lanou3g.platform.web.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.service.OwnerService;
import com.lanou3g.platform.service.ReclamationOrderService;

/**
 * 
 * @Description 订单查询列表控制器
 * @author Jack
 * @date 创建时间：2018年2月3日  
 * @version 1.0
 */

@Controller
public class ReclamationOrderController {
	@Autowired
	private OwnerService ownerService;
	@Autowired
	private ReclamationOrderService reclamationOrderService;
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/reclamationorder/reclamationorderlist")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows,    
			@RequestParam(defaultValue="")String searchparam,
			@RequestParam(defaultValue="")String updateTime, Model model){
		System.err.println(updateTime);
		// 1. 调用service
		PageBean pageBean = reclamationOrderService.findReclamationOrderByPage(currentPage, rows, searchparam, updateTime);
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);
		model.addAttribute("updateTime", updateTime);
		
		return "reclamationorder/reclamationorder-list";
	}
}
