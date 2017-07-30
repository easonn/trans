package org.app.controller;

import javax.annotation.Resource;
import org.app.service.IRoleService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/role")
public class RoleController {
	@Resource
	private IRoleService roleService;

	@RequestMapping(value = "/role", method = RequestMethod.POST)
	public void roleAddPower(@RequestParam int role_level) {
	}
}
