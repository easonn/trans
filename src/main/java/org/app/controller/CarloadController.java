package org.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.app.constant.SQLReturn;
import org.app.pojo.Carload;
import org.app.service.ICarloadService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "carloadsList", "carloadfList" })
@RequestMapping("/carload")
public class CarloadController {

    @Resource
    private ICarloadService carloadService;

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insertcarload(Carload carload, HttpServletRequest request, Model model) {
        int sqlReturn = carloadService.insert(carload);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            returnString = "redirect:/carload/query?flag=".concat(carload.getFlag());
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/query", method = RequestMethod.GET)
    public String querycarloads(Carload record, HttpServletRequest request, Model model) {
        List<Carload> carloadList = carloadService.dynamicLoad(record);
        if ("S".equals(record.getFlag())) {
            model.addAttribute("carloadsList", carloadList);
            return "carload_slist";
        } else {
            model.addAttribute("carloadfList", carloadList);
            return "carload_flist";
        }

    }

    @RequestMapping(value = "/carload_s_print", method = RequestMethod.GET)
    public String printscarloads(@ModelAttribute("carloadsList") List<Carload> carloadsList,
            @RequestParam String carloadIdList, HttpServletRequest request, Model model) {
        List<Carload> carloadPrintList = new ArrayList<Carload>();
        String[] carloadIdArray = carloadIdList.split(",");
        for (Carload carload : carloadsList) {
            for (String id : carloadIdArray) {
                if (Integer.parseInt(id) == carload.getId()) {
                    carloadPrintList.add(carload);
                }
            }
        }
        model.addAttribute("carloadPrintList", carloadPrintList);
        return "carload_skdzd_print";
    }

    @RequestMapping(value = "/carload_f_print", method = RequestMethod.GET)
    public String printfcarloads(@ModelAttribute("carloadfList") List<Carload> carloadfList,
            @RequestParam String carloadIdList, HttpServletRequest request, Model model) {
        List<Carload> carloadPrintList = new ArrayList<Carload>();
        String[] carloadIdArray = carloadIdList.split(",");
        for (Carload carload : carloadfList) {
            for (String id : carloadIdArray) {
                if (Integer.parseInt(id) == carload.getId()) {
                    carloadPrintList.add(carload);
                }
            }
        }
        model.addAttribute("carloadPrintList", carloadPrintList);
        return "carload_fkdzd_print";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editcarload(HttpServletRequest request, Model model) {
        int carloadId = Integer.parseInt(request.getParameter("id"));
        Carload carload = carloadService.selectByPrimaryKey(carloadId);
        if (null != carload) {
            model.addAttribute("carload", carload);
            if ("S".equalsIgnoreCase(carload.getFlag())) {
                return "carload_sedit";
            } else {
                return "carload_fedit";
            }
        } else {
            model.addAttribute("info", "xxxxx");
            return "carload_slist";
        }
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updatecarload(Carload carload, HttpServletRequest request, Model model) {
        int sqlReturn = carloadService.updateByPrimaryKeySelective(carload);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            return "redirect:/carload/query?flag=".concat(carload.getFlag());
        } else {
            String webReturnString = "xxx";
            model.addAttribute("info", webReturnString);
            model.addAttribute("carload", carload);
            if ("S".equalsIgnoreCase(carload.getFlag())) {
                return "carload_sedit";
            } else {
                return "carload_fedit";
            }

        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String printscarloads(HttpServletRequest request, Model model, @RequestParam String flag) {
        int carloadId = Integer.parseInt(request.getParameter("id"));
        int sqlReturn = carloadService.deleteByPrimaryKey(carloadId);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            Carload carload = new Carload();
            carload.setFlag(flag);
            List<Carload> carloadList = carloadService.dynamicLoad(carload);
            if ("S".equals(carload.getFlag())) {
                model.addAttribute("carloadsList", carloadList);
                return "carload_slist";
            } else {
                model.addAttribute("carloadfList", carloadList);
                return "carload_flist";
            }
        } else
            return "/login";
    }
}
