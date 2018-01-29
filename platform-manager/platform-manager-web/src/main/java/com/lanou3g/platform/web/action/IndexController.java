package com.lanou3g.platform.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页控制器
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
	public String index(){
		return "index";
	}
}
