package com.lanou3g.platform.web.action;

import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanou3g.platform.common.ImageCodeUtil;
import com.lanou3g.platform.pojo.SysUser;
import com.lanou3g.platform.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping("/login")
	public String login(String username, String password,String imageCode, HttpSession session){
		// 判断非空
		if(StringUtils.isBlank(username)
				|| StringUtils.isBlank(password)
				|| StringUtils.isBlank(imageCode)){
			session.setAttribute("error", "参数不能为空");
			// 重新登录
			return "index";
		}
		
		 
		
		// 获取到验证码
		String code = (String) session.getAttribute("imageCode");
		// 转换为大小写
		code = code.toLowerCase();
		imageCode = imageCode.toLowerCase();

		// 判断
		if(!code.equals(imageCode)){
			session.setAttribute("error", "验证码错误");
			// 重新登录
			return "index";
		}
		
		
		
		// 获取到数据
		SysUser user = userService.login(username, password);
		if(user == null){
			session.setAttribute("error", "用户名或密码错误");
			// 重新登录
			return "index";
		}
		
		// 将对象保存到session中
		session.setAttribute("userBySession", user); 
		return "redirect:/main/main/main";
	}
	
	/**
	 *  生成验证码
	 * @param response
	 * @param session
	 * @throws Exception
	 */
	@RequestMapping("/createImage")
	public void createImage(HttpServletResponse response, HttpSession session)
			throws Exception {
		Map<String, BufferedImage> imageMap = ImageCodeUtil.createImage();
		String code = imageMap.keySet().iterator().next();
		System.out.println("------》" +code);
		session.setAttribute("imageCode", code);
		BufferedImage image = imageMap.get(code);
		response.setContentType("image/jpeg");
		OutputStream ops = response.getOutputStream();
		ImageIO.write(image, "jpeg", ops);
		ops.close();
	}
	
 
	
	/**
	 * 退出
	 * @param session
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		if(session!=null){
  			session.invalidate();
  			session = null;
  		}
		System.out.println("----222");
		return "redirect:/";
	}
}
