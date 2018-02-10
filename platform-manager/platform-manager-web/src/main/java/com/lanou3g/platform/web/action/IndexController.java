package com.lanou3g.platform.web.action;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页控制器
 * 
 * @author admin
 *
 */
@Controller
public class IndexController {

	/**
	 * 跳转到首页
	 * @return
	 */
	@RequestMapping("/")
	public String index() {
		return "index";
	}

	/**
	 * 跳转到指定的页面
	 * 
	 * @param mod
	 * @param tab
	 * @return 跳转到指定的页面。
	 */
	@RequestMapping("/main/{mod}/{tab}")
	public String jumpTab(@PathVariable String mod, @PathVariable String tab) {

		// 如果不为空，返回的是要跳转的页面
		return mod + "/" + tab;
	}
	
 	/**
 	 * 没有权限
 	 * @return
 	 */
 	@RequestMapping("/main/no-perm")
 	public String noPerm(){
 		return "no-perm";
 	}
}
