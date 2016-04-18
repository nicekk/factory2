package org.muzi.controller;

import java.util.List;

import org.muzi.model.Staff;
import org.muzi.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 员工控制器
 * 
 * @author wangkai
 *
 * @version $Id: StaffController.java, v 0.1 2016年4月18日 下午2:17:32 Administrator Exp $
 */
@Controller
@RequestMapping("/admin")
public class StaffController {

	@Autowired
	private StaffService staffService;
	
	@RequestMapping("/staffList.htm")
	public String getAll(ModelMap modelMap) {
		List<Staff> staffList = staffService.getAll();
		modelMap.addAttribute("staffList",staffList);
		return "admin/staffInfo";
	}
	
	@RequestMapping("/staffAdd.htm")
	public String insert(ModelMap modelMap,Staff staff) {
		staffService.insert(staff);
		modelMap.addAttribute("msg","插入成功");
		return "admin/success.jsp";
	}
	
	
}
