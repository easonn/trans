package org.app.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.app.constant.SQLReturn;
import org.app.pojo.Carload;
import org.app.pojo.Role;
import org.app.pojo.User;
import org.app.service.ICarloadService;
import org.app.service.IRoleService;
import org.app.service.IUserService;
import org.junit.runners.Parameterized.Parameter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/auth")
public class AuthController {

	@Resource
	private IUserService userService;

	@Resource
	private IRoleService roleService;

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String setModuleAuth(@RequestParam String roleLevel,
			@RequestParam Integer userId, HttpServletRequest request,
			Model model) {
		User user = userService.getUserById(userId);
		if (null != user) {
			user.setRoleLevel(Integer.parseInt(roleLevel));
			userService.updateByPrimaryKeySelective(user);
			return "redirect:/user/user_list";
		}
		return "login";
	}



	@RequestMapping(value = "/query", method = RequestMethod.GET)
	public String queryModuleAuth(@ModelAttribute("user") User user,
			HttpServletRequest request, Model model) {
		int roleLevel = user.getRoleLevel();
		int[] authArray = getAllModulAuth(roleLevel);
		Role role = roleService.selectByPrimaryKey(user.getRoleId());
		List<User> userList = userService.SelectByRoleId(user.getRoleId());
		for (int i = 0; i < userList.size(); i++) {
			if (user.getId() == userList.get(i).getId()) {
				userList.remove(i);
			}
		}
		model.addAttribute("userList", userList);
		model.addAttribute("role", role);
		model.addAttribute("moduleShow", authArray);
		return "auth_manager";
	}

	public static int[] getAllModulAuth(int roleLevel) {
		String level = String.valueOf(roleLevel);
		int[] authArray = { 0, 0, 0, 0, 0 };
		for (int i = 0; i < level.length(); i++) {
			authArray[i] = Integer.parseInt(String.valueOf(level.charAt(i)));
		}
		return authArray;
	}
}
