package org.app.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.app.constant.SQLReturn;
import org.app.constant.WebReturn;
import org.app.pojo.Income;
import org.app.pojo.Sainput;
import org.app.pojo.Summary;
import org.app.pojo.SummaryWithBLOBs;
import org.app.service.IIncomeService;
import org.app.service.ISainputService;
import org.app.service.ISummaryService;
import org.app.service.impl.SainputService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "summarysList", "summaryfList" })
@RequestMapping("/summary")
public class SummaryController {

    @Resource
    private ISummaryService summaryService;

    @Resource
    private ISainputService sainputService;

    @Resource
    private IIncomeService incomeService;

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insertQueryIncome(@RequestParam int id, HttpServletRequest request, Model model) {
        Income income = incomeService.selectByPrimaryKey(id);
        Sainput sainput = sainputService.selectByPrimaryKey(income.getSainputId());
        model.addAttribute("income", income);
        model.addAttribute("sainput", sainput);
        return "summary_insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insertSummary(SummaryWithBLOBs summary, HttpServletRequest request, Model model) {
        int sqlReturn = summaryService.insert(summary);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            Income income = incomeService.selectByPrimaryKey(summary.getIncomeId());
            income.setSummaryState("Y");
            incomeService.updateByPrimaryKeySelective(income);
            returnString = "redirect:/summary/query?flag=".concat(summary.getFlag());
        } else if (sqlReturn == SQLReturn.DATA_EXIST) {
            webReturnString = WebReturn.BILLNO_EXIST_STRING;
            returnString = "summary_insert";
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/query", method = RequestMethod.GET)
    public String querySummarys(SummaryWithBLOBs record, HttpServletRequest request, Model model) {
        List<SummaryWithBLOBs> summaryList = summaryService.dynamicLoad(record);
        if ("S".equals(record.getFlag())) {
            model.addAttribute("summarysList", summaryList);
            return "summary_slist";
        } else {
            model.addAttribute("summaryfList", summaryList);
            return "summary_flist";
        }

    }

    @RequestMapping(value = "/summary_s_print", method = RequestMethod.GET)
    public String printsSummarys(@ModelAttribute("summarysList") List<Summary> summarysList,
            @RequestParam String summaryIdList, HttpServletRequest request, Model model) {
        List<Summary> summaryPrintList = new ArrayList<Summary>();
        String[] summaryIdArray = summaryIdList.split(",");
        for (Summary summary : summarysList) {
            for (String id : summaryIdArray) {
                if (Integer.parseInt(id) == summary.getId()) {
                    summaryPrintList.add(summary);
                }
            }
        }
        model.addAttribute("summaryPrintList", summaryPrintList);
        return "summary_skdzd_print";
    }

    @RequestMapping(value = "/summary_f_print", method = RequestMethod.GET)
    public String printfSummarys(@ModelAttribute("summaryfList") List<Summary> summaryfList,
            @RequestParam String summaryIdList, HttpServletRequest request, Model model) {
        List<Summary> summaryPrintList = new ArrayList<Summary>();
        String[] summaryIdArray = summaryIdList.split(",");
        for (Summary summary : summaryfList) {
            for (String id : summaryIdArray) {
                if (Integer.parseInt(id) == summary.getId()) {
                    summaryPrintList.add(summary);
                }
            }
        }
        model.addAttribute("summaryPrintList", summaryPrintList);
        return "summary_fkdzd_print";
    }

    @RequestMapping(value = "/edit")
    public String editSummary(HttpServletRequest request, Model model) {
        int summaryId = Integer.parseInt(request.getParameter("id"));
        Summary summary = summaryService.selectByPrimaryKey(summaryId);
        HashMap<String,String> kHashMap = new HashMap<>();
        if (null != summary) {
            model.addAttribute("summary", summary);
            if ("S".equalsIgnoreCase(summary.getFlag())) {
                return "summary_sedit";
            } else {
                return "summary_fedit";
            }
        } else {
            model.addAttribute("info", "xxxxx");
            return "summary_slist";
        }
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateSummary(Summary summary, HttpServletRequest request, Model model) {
        int sqlReturn = summaryService.updateByPrimaryKey(summary);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            return "redirect:/summary/query?flag=".concat(summary.getFlag());
        } else {
            String webReturnString = "xxx";
            model.addAttribute("info", webReturnString);
            model.addAttribute("summary", summary);
            if ("S".equalsIgnoreCase(summary.getFlag())) {
                return "summary_sedit";
            } else {
                return "summary_fedit";
            }

        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String printsSummarys(HttpServletRequest request, Model model, @RequestParam String flag) {
        int summaryId = Integer.parseInt(request.getParameter("id"));
        int sqlReturn = summaryService.deleteByPrimaryKey(summaryId);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            SummaryWithBLOBs summary = new SummaryWithBLOBs();
            summary.setFlag(flag);
            List<SummaryWithBLOBs> summaryList = summaryService.dynamicLoad(summary);
            if ("S".equals(summary.getFlag())) {
                model.addAttribute("summarysList", summaryList);
                return "summary_slist";
            } else {
                model.addAttribute("summaryfList", summaryList);
                return "summary_flist";
            }
        } else
            return "/login";
    }
}
