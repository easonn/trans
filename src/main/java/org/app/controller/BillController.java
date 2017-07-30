package org.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.app.constant.SQLReturn;
import org.app.constant.WebReturn;
import org.app.pojo.Bill;
import org.app.pojo.Corporation;
import org.app.service.IBillService;
import org.app.service.ICorporationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "billsList", "billfList", "corpNameList" })
@RequestMapping("/bill")
public class BillController {

    @Resource
    private IBillService billService;

    @Resource
    private ICorporationService corporationService;

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insertBill(Bill bill, HttpServletRequest request, Model model) {
        int sqlReturn = billService.insert(bill);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            returnString = "redirect:/bill/query?flag=".concat(bill.getFlag());
        } else if (sqlReturn == SQLReturn.DATA_EXIST) {
            webReturnString = WebReturn.BILLNO_EXIST_STRING;
            returnString = "bill_insert";
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String insertBillByGet(HttpServletRequest request, Model model) {
        List<Corporation> corpList = corporationService.dynamicLoad(new Corporation());
        StringBuffer stringBuffer = new StringBuffer();
        for (Corporation corp : corpList) {
            stringBuffer.append("'").append(corp.getCorpName()).append("',");
        }
        stringBuffer.delete(stringBuffer.length() - 1, stringBuffer.length());
        model.addAttribute("corpNameList", stringBuffer.toString());
        return "/bill_insert_new";
    }

    @RequestMapping(value = "/query", method = RequestMethod.GET)
    public String queryBills(Bill record, HttpServletRequest request, Model model) {
        List<Bill> billList = billService.dynamicLoad(record);
        if ("S".equals(record.getFlag())) {
            model.addAttribute("billsList", billList);
            return "bill_slist";
        } else {
            model.addAttribute("billfList", billList);
            return "bill_flist";
        }

    }

    @RequestMapping(value = "/bill_s_print", method = RequestMethod.GET)
    public String printsBills(@ModelAttribute("billsList") List<Bill> billsList, @RequestParam String billIdList,
            HttpServletRequest request, Model model) {
        List<Bill> billPrintList = new ArrayList<Bill>();
        String[] billIdArray = billIdList.split(",");
        for (Bill bill : billsList) {
            for (String id : billIdArray) {
                if (Integer.parseInt(id) == bill.getId()) {
                    billPrintList.add(bill);
                }
            }
        }
        model.addAttribute("billPrintList", billPrintList);
        return "skdzd_print";
    }

    @RequestMapping(value = "/bill_f_print", method = RequestMethod.GET)
    public String printfBills(@ModelAttribute("billfList") List<Bill> billfList, @RequestParam String billIdList,
            HttpServletRequest request, Model model) {
        List<Bill> billPrintList = new ArrayList<Bill>();
        String[] billIdArray = billIdList.split(",");
        for (Bill bill : billfList) {
            for (String id : billIdArray) {
                if (Integer.parseInt(id) == bill.getId()) {
                    billPrintList.add(bill);
                }
            }
        }
        model.addAttribute("billPrintList", billPrintList);
        return "fkdzd_print";
    }

    @RequestMapping(value = "/edit")
    public String editBill(HttpServletRequest request, Model model) {
        int billId = Integer.parseInt(request.getParameter("id"));
        Bill bill = billService.selectByPrimaryKey(billId);
        if (null != bill) {
            model.addAttribute("bill", bill);
            if ("S".equalsIgnoreCase(bill.getFlag())) {
                return "bill_sedit";
            } else {
                return "bill_fedit";
            }
        } else {
            model.addAttribute("info", "xxxxx");
            return "bill_slist";
        }
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updateBill(Bill bill, HttpServletRequest request, Model model) {
        int sqlReturn = billService.updateByPrimaryKeySelective(bill);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            return "redirect:/bill/query?flag=".concat(bill.getFlag());
        } else {
            String webReturnString = "xxx";
            model.addAttribute("info", webReturnString);
            model.addAttribute("bill", bill);
            if ("S".equalsIgnoreCase(bill.getFlag())) {
                return "bill_sedit";
            } else {
                return "bill_fedit";
            }

        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String printsBills(HttpServletRequest request, Model model, @RequestParam String flag) {
        int billId = Integer.parseInt(request.getParameter("id"));
        int sqlReturn = billService.deleteByPrimaryKey(billId);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            Bill bill = new Bill();
            bill.setFlag(flag);
            List<Bill> billList = billService.dynamicLoad(bill);
            if ("S".equals(bill.getFlag())) {
                model.addAttribute("billsList", billList);
                return "bill_slist";
            }
            if ("F".equals(bill.getFlag())) {
                model.addAttribute("billfList", billList);
                return "bill_flist";
            }
            // ("N".equals(bill.getFlag()))
            else {
                model.addAttribute("billfList", billList);
                return "redirect:/bill/bill_list";
            }
        } else
            return "/login";
    }

    /**************************************************************************************/
    @RequestMapping(value = "/bill_list", method = RequestMethod.GET)
    public String getBills(HttpServletRequest request, Model model) {
        Bill record = new Bill();
        List<Bill> billList = billService.dynamicLoad(record);
        model.addAttribute("billNewList", billList);
        return "bill_list_new";
    }

    @RequestMapping(value = "/insert_new", method = RequestMethod.POST)
    public String insertNewBill(Bill bill, HttpServletRequest request, Model model) {
        bill.setFlag("N");
        int sqlReturn = billService.insertSelective(bill);
        String webReturnString = "";
        String returnString = "";
        if (sqlReturn == SQLReturn.DATA_INSERT_SUCCESS) {
            returnString = "redirect:/bill/bill_list";
        } else if (sqlReturn == SQLReturn.DATA_EXIST) {
            webReturnString = WebReturn.BILLNO_EXIST_STRING;
            returnString = "/bill_insert_new";
        }
        model.addAttribute("info", webReturnString);
        return returnString;
    }

    @RequestMapping(value = "/bill_price_insert", method = RequestMethod.GET)
    public String insertNewBill(HttpServletRequest request, Model model) {
        int billId = Integer.parseInt(request.getParameter("id"));
        Bill bill = billService.selectByPrimaryKey(billId);
        model.addAttribute("bill", bill);
        return "bill_insert_new1";
    }

    @RequestMapping(value = "/bill_price_insert", method = RequestMethod.POST)
    public String insertNewBillPost(Bill bill, HttpServletRequest request, Model model) {
        int sqlReturn = billService.updateByPrimaryKeySelective(bill);
        if (sqlReturn == SQLReturn.DATA_UPDATE_SUCCESS) {
            return "redirect:/bill/query?flag=".concat(bill.getFlag());
        } else {
            String webReturnString = "xxx";
            model.addAttribute("info", webReturnString);
            model.addAttribute("bill", bill);
            return "bill_insert_new1";
        }
    }
}
