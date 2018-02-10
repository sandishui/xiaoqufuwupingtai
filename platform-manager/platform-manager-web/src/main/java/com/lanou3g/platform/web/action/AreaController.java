package com.lanou3g.platform.web.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.support.json.JSONUtils;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lanou3g.platform.pojo.Area;
import com.lanou3g.platform.service.AreaService;

/**
* 
* @Description 省市控制器
* @author Jack
* @date 创建时间：2018年2月1日  
* @version 1.0
*/
@Controller
public class AreaController {
	@Autowired
	private AreaService areaService;
	@RequestMapping(value="/area/query",produces={"application/json;charset=UTF-8;","text/html;charset=UTF-8;"})
	@ResponseBody
	public String list(@RequestParam(defaultValue="0") int prentId ) throws  Exception { 
 			List<Area> list=areaService.findAreaByPid(prentId); 
			return JSONObject.toJSONString(list); 
	} 
}
