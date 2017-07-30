package org.app.pojo;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Bill {
    private Integer id;

    public static SimpleDateFormat formatTools = new SimpleDateFormat("yyyy-MM-dd");;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date checkDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date settleDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date billDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date billSendDate;

    private String billCorp;

    private String billNo;

    private String deductionsCorp;

    private BigDecimal price;

    private BigDecimal billPoint;

    private BigDecimal billPrice;

    private String flag;

    private String repComment;
    
    private String agencys;
    
    private String agencyf;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }

    public Date getSettleDate() {
        return settleDate;
    }

    public void setSettleDate(Date settleDate) {
        this.settleDate = settleDate;
    }

    public Date getBillDate() {
        return billDate;
    }

    public void setBillDate(Date billDate) {
        this.billDate = billDate;
    }

    public Date getBillSendDate() {
        return billSendDate;
    }

    public void setBillSendDate(Date billSendDate) {
        this.billSendDate = billSendDate;
    }

    public String getBillCorp() {
        return billCorp;
    }

    public void setBillCorp(String billCorp) {
        this.billCorp = billCorp == null ? null : billCorp.trim();
    }

    public String getBillNo() {
        return billNo;
    }

    public void setBillNo(String billNo) {
        this.billNo = billNo == null ? null : billNo.trim();
    }

    public String getDeductionsCorp() {
        return deductionsCorp;
    }

    public void setDeductionsCorp(String deductionsCorp) {
        this.deductionsCorp = deductionsCorp == null ? null : deductionsCorp.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getBillPoint() {
        return billPoint;
    }

    public void setBillPoint(BigDecimal billPoint) {
        this.billPoint = billPoint;
    }

    public BigDecimal getBillPrice() {
        return billPrice;
    }

    public void setBillPrice(BigDecimal billPrice) {
        this.billPrice = billPrice;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public String getRepComment() {
        return repComment;
    }

    public void setRepComment(String repComment) {
        this.repComment = repComment == null ? null : repComment.trim();
    }

    public String getAgencys() {
        return agencys;
    }

    public void setAgencys(String agencys) {
        this.agencys = agencys;
    }

    public String getAgencyf() {
        return agencyf;
    }

    public void setAgencyf(String agencyf) {
        this.agencyf = agencyf;
    }
}