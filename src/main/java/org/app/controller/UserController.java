package org.app.controller;

import java.security.PublicKey;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.app.constant.SQLReturn;
import org.app.constant.WebReturn;
import org.app.pojo.Bill;
import org.app.pojo.Role;
import org.app.pojo.User;
import org.app.service.IRoleService;
import org.app.service.IUserService;
import org.app.service.impl.RoleServiceImpl;
import org.app.utils.AuthUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private IUserService userService;

    @Resource
    private IRoleService roleService;

    @RequestMapping(value = "/showUser", method = RequestMethod.GET)
    public String toIndex(HttpServletRequest request, Model model, HttpSession httpSession) {
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.userService.getUserById(userId);
        httpSession.setAttribute("user", user);
        return "showUser";
    }

    @RequestMapping(value = "/query", method = RequestMethod.POST)
    public @ResponseBody User getUser(HttpServletRequest request, Model model) {
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.userService.getUserById(userId);
        return user;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User record, HttpServletRequest request, ModelMap model, HttpSession httpSession) {
        User user = userService.validationUser(record);
        if (null != user) {
            user.setPassword("");
            httpSession.setAttribute("user", user);
            Role role = roleService.selectByPrimaryKey(user.getRoleId());
            httpSession.setAttribute("role", role);
            int roleLevel = user.getRoleLevel();
            httpSession.setAttribute("sainputAuth", AuthUtils.getModuleAuth(roleLevel, AuthUtils.SAINPUT_AUTH));
            httpSession.setAttribute("incomeAuth", AuthUtils.getModuleAuth(roleLevel, AuthUtils.INCOME_AUTH));
            httpSession.setAttribute("billAuth", AuthUtils.getModuleAuth(roleLevel, AuthUtils.BILL_AUTH));
            httpSession.setAttribute("carloadAuth", AuthUtils.getModuleAuth(roleLevel, AuthUtils.CARLOAD_AUTH));
            httpSession.setAttribute("summaryAuth", AuthUtils.getModuleAuth(roleLevel, AuthUtils.SUMMARY_AUTH));

            return "redirect:/index";
        } else {
            model.addAttribute("info", WebReturn.USER_VALIDATION_FAILED);
            return "login";
        }
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String update(User record, HttpServletRequest request, ModelMap model, @RequestParam String passwordOld,
            @RequestParam String password, HttpSession httpSession) {
        record.setPassword(passwordOld);
        User user = userService.validationUser(record);
        if (null != user) {
            user.setPassword(password);
            int sqlReturn = userService.updateByPrimaryKeySelective(user);
            if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
                httpSession.setAttribute("user", user);
                return "redirect:/login";
            } else {
                return "user_edit";
            }
        } else {
            model.addAttribute("info", "”√ªß√˚√‹¬Î¥ÌŒÛ");
            return "user_edit";
        }
    }

    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String register(User record, HttpServletRequest request, Model model) {
        record.setRoleLevel(11111);
        int sqlReturn = userService.insert(record);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            webReturnString = WebReturn.REGISTER_SUCCESS;
            return "redirect:/user/user_list";
        } else if (sqlReturn == SQLReturn.DATA_EXIST) {
            webReturnString = WebReturn.REGISTER_EXIST_STRING;
            returnString = "registration";
        } else {
            webReturnString = WebReturn.SYSTEM_EXCEPTION;
            returnString = "registration";
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/user_list", method = RequestMethod.GET)
    public String getUserList(HttpServletRequest request, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        if (null == user || !user.getName().equals("admin")) {
            return "/user_info";
        }
        List<User> userList = userService.selectByAdmin();
        model.addAttribute("userList", userList);
        return "user_list";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(@ModelAttribute("user") User user) {
        return "success";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editUser(HttpServletRequest request, Model model) {
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.userService.getUserById(userId);
        model.addAttribute("userEdit", user);
        return "user_info_edit";
    }

    @RequestMapping(value = "/edit_info", method = RequestMethod.POST)
    public String updateInfo(HttpServletRequest request, Model model) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String realName = request.getParameter("realName");
        String phone = request.getParameter("phone");
        User user = new User();
        user.setId(id);
        user.setName(name);
        user.setRealName(realName);
        user.setPhone(phone);
        userService.updateByPrimaryKeySelective(user);
        return "redirect:/user/user_list";
    }

    @RequestMapping(value = "/auth", method = RequestMethod.GET)
    public String getUserAuth(HttpServletRequest request, Model model) {
        String name = request.getParameter("name");
        User user = userService.selectByName(name);
        Role role = roleService.selectByPrimaryKey(user.getRoleId());
        model.addAttribute("userAuth", user);
        model.addAttribute("roleAuth", role);
        model.addAttribute("authInfo", user.getRoleLevel() < 11111 ? 11111 : user.getRoleLevel());
        return "auth_manager";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String printsBills(HttpServletRequest request, Model model, HttpSession httpSession) {
        int userId = Integer.parseInt(request.getParameter("id"));
        int sqlReturn = userService.deleteByPrimaryKey(userId);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            User user = (User) httpSession.getAttribute("user");
            if (null == user || !user.getName().equals("admin")) {
                return "/user_info";
            }
            List<User> userList = userService.selectByAdmin();
            model.addAttribute("userList", userList);
            return "user_list";
        } else
            return "/login";
    }
}
