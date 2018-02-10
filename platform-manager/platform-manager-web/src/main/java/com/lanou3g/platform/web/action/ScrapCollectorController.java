package com.lanou3g.platform.web.action;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanou3g.platform.common.PageBean;
import com.lanou3g.platform.pojo.ScrapCollector;
import com.lanou3g.platform.service.ScrapCollectorService;
 
/**
 * 
 * @Description 废品回收员控制器
 * @author Jack
 * @date 创建时间：2018年2月1日  
 * @version 1.0
 */

@Controller
public class ScrapCollectorController {

	@Autowired
	private ScrapCollectorService scrapCollectorService;
 
	
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/scrapCollector/scrapCollectorList")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		// 1. 调用service
		PageBean pageBean = scrapCollectorService.findDictByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);
		
		return "scrapCollector/scrapCollector-list";
	}
	@RequestMapping("/scrapCollector/toadd")
	public String toAdd(){ 
		
		return "scrapCollector/scrapCollector-add";
	}
	/**
	 * 增加
	 * @param scrapCollector
	 * @return
	 */
	@RequestMapping("/scrapCollector/add")
	public String add(ScrapCollector scrapCollector){
		// 增加
		int addDict = scrapCollectorService.addScrapCollector(scrapCollector);
		
		return "redirect:/scrapCollector/scrapCollectorList";
	}
	
	/**
	 * 修改前
	 * @return
	 */
	@RequestMapping("/scrapCollector/predit")
	public String preEdit(int id, Model model){
		ScrapCollector scrapCollector = scrapCollectorService.findById(id);
		model.addAttribute("scrapCollector", scrapCollector);
		return "scrapCollector/scrapCollector-edit";
	}
	
	/**
	 * 进行修改
	 * @param scrapCollector 
	 * @return
	 */
	@RequestMapping("/scrapCollector/edit")
	public String edit(ScrapCollector scrapCollector, Model model){
		scrapCollectorService.updateScrapCollector(scrapCollector);
		return "redirect:/scrapCollector/scrapCollectorList";
	} 
	@RequestMapping("/scrapCollector/delete")
	@ResponseBody
	public void delete(@RequestParam(value="ids[]")int[] ids){
		 
		scrapCollectorService.deleteScrapCollector(ids);
	}
	
}
