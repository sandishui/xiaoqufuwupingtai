package com.lanou3g.platform.web.action;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.Scrap;
import com.lanou3g.platform.service.ScrapService;
 
/**
 * 
 * @Description 废品控制器
 * @author Jack
 * @date 创建时间：2018年2月1日  
 * @version 1.0
 */

@Controller
public class ScrapController {

	@Autowired
	private ScrapService scrapService;
 
	
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/scrap/scraplist")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		// 1. 调用service
		PageBean pageBean = scrapService.findDictByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);
		
		return "scrap/scrap-list";
	}
	@RequestMapping("/scrap/toadd")
	public String toAdd(){ 
		
		return "scrap/scrap-add";
	}
	/**
	 * 增加
	 * @param scrap 
	 * @return
	 */
	@RequestMapping("/scrap/add")
	public String add(Scrap scrap){
		// 增加
		int addDict = scrapService.addScrap(scrap);
		
		return "redirect:/scrap/scraplist";
	}
	
	/**
	 * 修改前
	 * @return
	 */
	@RequestMapping("/scrap/predit")
	public String preEdit(int id, Model model){
		Scrap dict = scrapService.findById(id);
		model.addAttribute("scrap", dict);
		return "scrap/scrap-edit";
	}
	
	/**
	 * 进行修改
	 * @param scrap 
	 * @return
	 */
	@RequestMapping("/scrap/edit")
	public String edit(Scrap  scrap, Model model){
		scrapService.updateScrap(scrap);
		return "redirect:/scrap/scraplist";
	} 
	@RequestMapping("/scrap/delete")
	@ResponseBody
	public void delete(@RequestParam(value="ids[]")int[] ids){
		 
		scrapService.deleteScrap(ids);
	}
	
}
