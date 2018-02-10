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
import com.lanou3g.platform.pojo.SysDict;
import com.lanou3g.platform.service.DictService;
 
/**
 * 
 * @Description 数据字典控制器
 * @author Jack
 * @date 创建时间：2018年2月1日  
 * @version 1.0
 */

@Controller
public class DictController {

	@Autowired
	private DictService dictService;
 
	
	/**
	 * 带条件的分页查询
	 * @param currentPage   当前页
	 * @param rows			页容量
	 * @param param			参数
	 * @param model
	 * @return  
	 */
	@RequestMapping("/dict/dictlist")
	public String list(@RequestParam(defaultValue="1" ) int currentPage, 
			@RequestParam(defaultValue="10") int rows, 
			@RequestParam(defaultValue="")String searchparam, Model model){
 
		// 1. 调用service
		PageBean pageBean = dictService.findDictByPage(currentPage, rows, searchparam);
		
		// 2. model封装
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("rows", rows);
		model.addAttribute("searchparam", searchparam);
		
		return "dict/dict-list";
	}
	@RequestMapping("/dict/toadd")
	public String toAdd(){ 
		
		return "dict/dict-add";
	}
	/**
	 * 增加
	 * @param dict 
	 * @return
	 */
	@RequestMapping("/dict/add")
	public String add(SysDict dict){
		// 增加
		int addDict = dictService.addDict(dict);
		
		return "redirect:/dict/dictlist";
	}
	
	/**
	 * 修改前
	 * @return
	 */
	@RequestMapping("/dict/predit")
	public String preEdit(int id, Model model){
		SysDict dict = dictService.findById(id);
		model.addAttribute("dict", dict);
		return "dict/dict-edit";
	}
	
	/**
	 * 进行修改
	 * @param dict 
	 * @return
	 */
	@RequestMapping("/dict/edit")
	public String edit(SysDict dict, Model model){
		dictService.updateDict(dict);
		return "redirect:/dict/dictlist";
	} 
	@RequestMapping("/dict/delete")
	@ResponseBody
	public void delete(@RequestParam(value="ids[]")int[] ids){
		System.out.println("dddddddddd" + Arrays.toString(ids)  );
		dictService.deleteDict(ids);
	}
	@RequestMapping(value="/dict/query",produces={"application/json;charset=UTF-8;","text/html;charset=UTF-8;"})
	@ResponseBody
	public String dictList(@RequestParam(defaultValue="")String dictTabName,
			@RequestParam(defaultValue="")String dictColName){ 
		return JSONObject.toJSONString(dictService.findDictByTabColumn(dictTabName,dictColName));
	}
}
