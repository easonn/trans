package org.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.management.Query;
import javax.servlet.http.HttpServletRequest;

import org.app.constant.SQLReturn;
import org.app.constant.WebReturn;
import org.app.pojo.Sainput;
import org.app.service.ISainputService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "sainputsList", "sainputfList" })
@RequestMapping("/sainput")
public class SainputController {

    @Resource
    private ISainputService sainputService;

    @RequestMapping(value = "/sainput_insert")
    public String sainputLoad(HttpServletRequest request, Model model) {
        Sainput tmp = new Sainput();
        tmp.setFlag("S");
        List<Sainput> sainputsList = sainputService.dynamicLoad(tmp);
        model.addAttribute("sainputsList", sainputsList);
        tmp.setFlag("F");
        List<Sainput> sainputfList = sainputService.dynamicLoad(tmp);
        model.addAttribute("sainputfList", sainputfList);
        return "sainput_insert";
    }
    


    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insertSainput(Sainput sainput, HttpServletRequest request, Model model) {
        int sqlReturn = sainputService.insert(sainput);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            Sainput record = new Sainput();
            record.setFlag(sainput.getFlag());
            List<Sainput> sainputList = sainputService.dynamicLoad(record);
            if ("S".equals(record.getFlag())) {
                model.addAttribute("sainputsList", sainputList);
                returnString = "sainput_slist";
            } else {
                model.addAttribute("sainputfList", sainputList);
                returnString = "sainput_flist";
            }
        } else if (sqlReturn == SQLReturn.DATA_EXIST) {
            webReturnString = WebReturn.BILLNO_EXIST_STRING;
            returnString = "sainput_insert";
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/query", method = RequestMethod.GET)
    public String querySainputs(Sainput record, HttpServletRequest request, Model model) {
        List<Sainput> sainputList = sainputService.dynamicLoad(record);
        if ("S".equals(record.getFlag())) {
            model.addAttribute("sainputsList", sainputList);
            return "sainput_slist";
        } else {
            model.addAttribute("sainputfList", sainputList);
            return "sainput_flist";
        }

    }

    @RequestMapping(value = "/sainput_s_print", method = RequestMethod.GET)
    public String printsSainputs(@ModelAttribute("sainputsList") List<Sainput> sainputsList,
            @RequestParam String sainputIdList, HttpServletRequest request, Model model) {
        List<Sainput> sainputPrintList = new ArrayList<Sainput>();
        String[] sainputIdArray = sainputIdList.split(",");
        for (Sainput sainput : sainputsList) {
            for (String id : sainputIdArray) {
                if (Integer.parseInt(id) == sainput.getId()) {
                    sainputPrintList.add(sainput);
                }
            }
        }
        model.addAttribute("sainputPrintList", sainputPrintList);
        return "skdzd_print";
    }

    @RequestMapping(value = "/sainput_f_print", method = RequestMethod.GET)
    public String printfSainputs(@ModelAttribute("sainputfList") List<Sainput> sainputfList,
            @RequestParam String sainputIdList, HttpServletRequest request, Model model) {
        List<Sainput> sainputPrintList = new ArrayList<Sainput>();
        String[] sainputIdArray = sainputIdList.split(",");
        for (Sainput sainput : sainputfList) {
            for (String id : sainputIdArray) {
                if (Integer.parseInt(id) == sainput.getId()) {
                    sainputPrintList.add(sainput);
                }
            }
        }
        model.addAttribute("sainputPrintList", sainputPrintList);
        return "fkdzd_print";
    }

    @RequestMapping(value = "/edit")
    public String editSainput(HttpServletRequest request, Model model) {
        int sainputId = Integer.parseInt(request.getParameter("id"));
        Sainput sainput = sainputService.selectByPrimaryKey(sainputId);
        if (null != sainput) {
            model.addAttribute("sainput", sainput);
            if ("S".equalsIgnoreCase(sainput.getFlag())) {
                return "sainput_sedit";
            } else {
                return "sainput_fedit";
            }
        } else {
            model.addAttribute("info", "xxxxx");
            return "sainput_slist";
        }
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updateSainput(Sainput sainput, HttpServletRequest request, Model model) {
        int sqlReturn = sainputService.updateByPrimaryKeySelective(sainput);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            return "redirect:/sainput/query?flag=".concat(sainput.getFlag());
        } else {
            String webReturnString = "xxx";
            model.addAttribute("info", webReturnString);
            model.addAttribute("sainput", sainput);
            if ("S".equalsIgnoreCase(sainput.getFlag())) {
                return "sainput_sedit";
            } else {
                return "sainput_fedit";
            }

        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String printsSainputs(HttpServletRequest request, Model model, @RequestParam String flag) {
        int sainputId = Integer.parseInt(request.getParameter("id"));
        int sqlReturn = sainputService.deleteByPrimaryKey(sainputId);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            Sainput sainput = new Sainput();
            sainput.setFlag(flag);
            List<Sainput> sainputList = sainputService.dynamicLoad(sainput);
            if ("S".equals(sainput.getFlag())) {
                model.addAttribute("sainputsList", sainputList);
                return "sainput_slist";
            } else {
                model.addAttribute("sainputfList", sainputList);
                return "sainput_flist";
            }
        } else
            return "/login";
    }
}
