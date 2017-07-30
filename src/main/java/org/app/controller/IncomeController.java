package org.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.app.constant.SQLReturn;
import org.app.constant.WebReturn;
import org.app.dao.SainputMapper;
import org.app.pojo.Income;
import org.app.pojo.Sainput;
import org.app.service.IIncomeService;
import org.app.service.ISainputService;
import org.app.service.impl.SainputService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "incomesList", "incomefList" })
@RequestMapping("/income")
public class IncomeController {

    @Resource
    private IIncomeService incomeService;

    @Resource
    private ISainputService sainputService;

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insertQueryIncome(@RequestParam int id, HttpServletRequest request, Model model) {
        Sainput sainput = sainputService.selectByPrimaryKey(id);
        model.addAttribute("sainput", sainput);
        return "income_insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insertIncome(Income income, HttpServletRequest request, Model model) {
        int sqlReturn = incomeService.insert(income);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            Sainput sainput = new Sainput();
            sainput.setId(income.getSainputId());
            sainput.setIncomeState("Y");
            sainputService.updateByPrimaryKeySelective(sainput);
            returnString = "redirect:/income/query?flag=".concat(income.getFlag());
        } else if (sqlReturn == SQLReturn.DATA_EXIST) {
            webReturnString = WebReturn.BILLNO_EXIST_STRING;
            returnString = "income_insert";
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/query", method = RequestMethod.GET)
    public String queryIncomes(Income record, HttpServletRequest request, Model model) {
        List<Income> incomeListTmp = incomeService.dynamicLoad(record);
        List<Income> incomeList = new ArrayList<Income>();
        for (Income income : incomeListTmp) {
            income.setSainput(sainputService.selectByPrimaryKey(income.getSainputId()));
            incomeList.add(income);
        }
        if ("S".equals(record.getFlag())) {
            model.addAttribute("incomesList", incomeList);
            return "income_slist";
        } else {
            model.addAttribute("incomefList", incomeList);
            return "income_flist";
        }

    }

    @RequestMapping(value = "/income_s_print", method = RequestMethod.GET)
    public String printsIncomes(@ModelAttribute("incomesList") List<Income> incomesList,
            @RequestParam String incomeIdList, HttpServletRequest request, Model model) {
        List<Income> incomePrintList = new ArrayList<Income>();
        String[] incomeIdArray = incomeIdList.split(",");
        for (Income income : incomesList) {
            for (String id : incomeIdArray) {
                if (Integer.parseInt(id) == income.getId()) {
                    incomePrintList.add(income);
                }
            }
        }
        model.addAttribute("incomePrintList", incomePrintList);
        return "income_skdzd_print";
    }

    @RequestMapping(value = "/income_f_print", method = RequestMethod.GET)
    public String printfIncomes(@ModelAttribute("incomefList") List<Income> incomefList,
            @RequestParam String incomeIdList, HttpServletRequest request, Model model) {
        List<Income> incomePrintList = new ArrayList<Income>();
        String[] incomeIdArray = incomeIdList.split(",");
        for (Income income : incomefList) {
            for (String id : incomeIdArray) {
                if (Integer.parseInt(id) == income.getId()) {
                    incomePrintList.add(income);
                }
            }
        }
        model.addAttribute("incomePrintList", incomePrintList);
        return "fkdzd_print";
    }

    @RequestMapping(value = "/edit")
    public String editIncome(HttpServletRequest request, Model model) {
        int incomeId = Integer.parseInt(request.getParameter("id"));
        Income income = incomeService.selectByPrimaryKey(incomeId);
        if (null != income) {
            Sainput sainput = sainputService.selectByPrimaryKey(income.getSainputId());
            income.setSainput(sainput);
            model.addAttribute("income", income);
            return "income_edit";

        } else {
            model.addAttribute("info", "xxxxx");
            return "income_slist";
        }
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updateIncome(Income income, HttpServletRequest request, Model model) {
        int sqlReturn = incomeService.updateByPrimaryKeySelective(income);
        String flag = income.getFlag();
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            return "redirect:/income/query?flag=" + flag;
        } else {
            String webReturnString = "xxx";
            model.addAttribute("info", webReturnString);
            model.addAttribute("income", income);
            if ("S".equalsIgnoreCase(flag)) {
                return "income_sedit";
            } else {
                return "income_fedit";
            }

        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String printsIncomes(HttpServletRequest request, Model model, @RequestParam String flag) {
        int incomeId = Integer.parseInt(request.getParameter("id"));
        int sqlReturn = incomeService.deleteByPrimaryKey(incomeId);

        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            Income income = new Income();
            income.setFlag(flag);
            List<Income> incomeList = incomeService.dynamicLoad(income);
            if ("S".equals(income.getFlag())) {
                model.addAttribute("incomesList", incomeList);
                return "income_slist";
            } else {
                model.addAttribute("incomefList", incomeList);
                return "income_flist";
            }
        } else
            return "/login";
    }
}
