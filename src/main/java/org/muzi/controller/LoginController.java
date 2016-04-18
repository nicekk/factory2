package org.muzi.controller;

import org.muzi.model.Staff;
import org.muzi.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 登录控制器
 * 
 * @author Administrator
 *
 */
@Controller
public class LoginController {

	@Autowired
	private StaffService staffService;

	@RequestMapping("/login.htm")
	public String doLogin(ModelMap modelMap, Staff staff) {
		Staff staff2 = staffService.getByUsername(staff.getUsername());
		if (staff2 == null) {
			modelMap.addAttribute("errorMsg", "用户名不存在");
			return "error";
		} else if (!staff2.getPassword().equals(staff.getPassword())) {
			modelMap.addAttribute("errorMsg", "密码错误");
			return "error";
		} else {
			modelMap.addAttribute("errorMsg", "登录成功");
			return "admin/main";
		}
	}
}
