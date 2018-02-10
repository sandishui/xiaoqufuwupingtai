package com.lanou3g.platform.web.action;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.lanou3g.platform.common.PageBean; 
import com.lanou3g.platform.pojo.HousingEstate;
import com.lanou3g.platform.service.HousingEstateService;
 
/**
 * 
 * @Description 小区控制器
 * @author Jack
 * @date 创建时间：2018年2月1日  
 * @version 1.0
 */

@Controller
public class HousingEstateController {

	@Autowired
	private HousingEstateService housingEstateService;
 
	
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/housingEstate/housingEstateList")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		// 1. 调用service
		PageBean pageBean = housingEstateService.findHousingEstateByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);
		
		return "housingEstate/housingEstate-list";
	}
	@RequestMapping("/housingEstate/toadd")
	public String toAdd(){ 
		
		return "housingEstate/housingEstate-add";
	}
	/**
	 * 增加
	 * @param housingEstate 
	 * @return
	 */
	@RequestMapping("/housingEstate/add")
	public String add(HousingEstate housingEstate){
		// 增加
		int addHousingEstate = housingEstateService.addHousingEstate(housingEstate);
		
		return "redirect:/housingEstate/housingEstateList";
	}
	
	/**
	 * 修改前
	 * @return
	 */
	@RequestMapping("/housingEstate/predit")
	public String preEdit(int id, Model model){
		HousingEstate housingEstate = housingEstateService.findById(id);
		model.addAttribute("housingEstate", housingEstate);
		return "housingEstate/housingEstate-edit";
	}
	
	/**
	 * 进行修改
	 * @param housingEstate 
	 * @return
	 */
	@RequestMapping("/housingEstate/edit")
	public String edit(HousingEstate housingEstate, Model model){
		housingEstateService.updateHousingEstate(housingEstate);
		return "redirect:/housingEstate/housingEstateList";
	} 
	
	@RequestMapping("/housingEstate/delete")
	@ResponseBody
	public void delete(@RequestParam(value="ids[]")int[] ids){ 
		System.err.println(ids);
		housingEstateService.deleteHousingEstate(ids);
	}
	
	@RequestMapping(value="/housing/query",produces={"application/json;charset=UTF-8;","text/html;charset=UTF-8;"})
	@ResponseBody
	public String housingList(@RequestParam(defaultValue="")String pCode,@RequestParam(defaultValue="")String cCode){
		return JSONObject.toJSONString(housingEstateService.findByTabCol(pCode,cCode));
	}
	
}
