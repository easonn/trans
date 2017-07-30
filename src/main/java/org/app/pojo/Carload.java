package org.app.pojo;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Carload {
    private Integer id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date checkDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date settleDate;

    private String sendStation;

    private String arriveStation;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date arriveDate;

    private String billNo;

    private String good;

    private Integer quantity;

    private BigDecimal weight;

    private BigDecimal invoice;

    private BigDecimal repaProjc;

    private BigDecimal price;

    private BigDecimal receivable;

    private String flag;

    private String saComment;

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

    public String getSendStation() {
        return sendStation;
    }

    public void setSendStation(String sendStation) {
        this.sendStation = sendStation == null ? null : sendStation.trim();
    }

    public String getArriveStation() {
        return arriveStation;
    }

    public void setArriveStation(String arriveStation) {
        this.arriveStation = arriveStation == null ? null : arriveStation.trim();
    }

    public Date getArriveDate() {
        return arriveDate;
    }

    public void setArriveDate(Date arriveDate) {
        this.arriveDate = arriveDate;
    }

    public String getBillNo() {
        return billNo;
    }

    public void setBillNo(String billNo) {
        this.billNo = billNo == null ? null : billNo.trim();
    }

    public String getGood() {
        return good;
    }

    public void setGood(String good) {
        this.good = good == null ? null : good.trim();
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public BigDecimal getInvoice() {
        return invoice;
    }

    public void setInvoice(BigDecimal invoice) {
        this.invoice = invoice;
    }

    public BigDecimal getRepaProjc() {
        return repaProjc;
    }

    public void setRepaProjc(BigDecimal repaProjc) {
        this.repaProjc = repaProjc;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getReceivable() {
        return receivable;
    }

    public void setReceivable(BigDecimal receivable) {
        this.receivable = receivable;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public String getSaComment() {
        return saComment;
    }

    public void setSaComment(String saComment) {
        this.saComment = saComment == null ? null : saComment.trim();
    }
}