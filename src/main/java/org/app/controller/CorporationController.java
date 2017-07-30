package org.app.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.app.constant.SQLReturn;
import org.app.constant.WebReturn;
import org.app.pojo.Corporation;
import org.app.service.ICorporationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/corporation")
public class CorporationController {

    @Resource
    private ICorporationService corporationService;

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insertCorporation(Corporation corporation, HttpServletRequest request, Model model) {
        int sqlReturn = corporationService.insert(corporation);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            returnString = "redirect:/corporation/query";
        } else if (sqlReturn == SQLReturn.DATA_EXIST) {
            webReturnString = WebReturn.BILLNO_EXIST_STRING;
            returnString = "corporation_insert";
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/query", method = RequestMethod.GET)
    public String queryCorporations(Corporation record, HttpServletRequest request, Model model) {
        List<Corporation> corporationList = corporationService.dynamicLoad(record);
        model.addAttribute("corporationsList", corporationList);
        return "corporation_list";
    }

    @RequestMapping(value = "/edit")
    public String editCorporation(HttpServletRequest request, Model model) {
        String corporationId = request.getParameter("corpId");
        Corporation corporation = corporationService.selectByPrimaryKey(corporationId);
        if (null != corporation) {
            model.addAttribute("corporation", corporation);
            return "corporation_edit";
        } else {
            model.addAttribute("info", "xxxxx");
            return "corporation_list";
        }
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updateCorporation(Corporation corporation, HttpServletRequest request, Model model) {
        int sqlReturn = corporationService.updateByPrimaryKeySelective(corporation);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            return "redirect:/corporation/query?flag=";
        } else {
            String webReturnString = "xxx";
            model.addAttribute("info", webReturnString);
            model.addAttribute("corporation", corporation);
            return "corporation_edit";
        }

    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteCorporations(HttpServletRequest request, Model model) {
        String corporationId = request.getParameter("corpId");
        int sqlReturn = corporationService.deleteByPrimaryKey(corporationId);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            Corporation corporation = new Corporation();
            List<Corporation> corporationList = corporationService.dynamicLoad(corporation);
            model.addAttribute("corporationsList", corporationList);
            return "corporation_list";
        }return "/login";
    }
}
