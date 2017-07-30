package org.app.pojo;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Income {
    private Integer id;

    private String cntrPlace;

    private String acorpName;

    private String cntrNo;

    private String consignee;

    private String corpAddress;

    private String corpPhone;

    private String corpPayer;

    private BigDecimal stgCost;

    private BigDecimal stsCost;

    private BigDecimal transExp;

    private BigDecimal incidentalExp;

    private Integer strcukNo;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date sendDate;

    private String truckDriver;

    private String truckNo;

    private Integer sainputId;

    private String comment;

    private String flag;

    private Sainput sainput;

    private String summaryState;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCntrPlace() {
        return cntrPlace;
    }

    public void setCntrPlace(String cntrPlace) {
        this.cntrPlace = cntrPlace == null ? null : cntrPlace.trim();
    }

    public String getAcorpName() {
        return acorpName;
    }

    public void setAcorpName(String acorpName) {
        this.acorpName = acorpName == null ? null : acorpName.trim();
    }

    public String getCntrNo() {
        return cntrNo;
    }

    public void setCntrNo(String cntrNo) {
        this.cntrNo = cntrNo == null ? null : cntrNo.trim();
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee == null ? null : consignee.trim();
    }

    public String getCorpAddress() {
        return corpAddress;
    }

    public void setCorpAddress(String corpAddress) {
        this.corpAddress = corpAddress == null ? null : corpAddress.trim();
    }

    public String getCorpPhone() {
        return corpPhone;
    }

    public void setCorpPhone(String corpPhone) {
        this.corpPhone = corpPhone == null ? null : corpPhone.trim();
    }

    public String getCorpPayer() {
        return corpPayer;
    }

    public void setCorpPayer(String corpPayer) {
        this.corpPayer = corpPayer == null ? null : corpPayer.trim();
    }

    public BigDecimal getStgCost() {
        return stgCost;
    }

    public void setStgCost(BigDecimal stgCost) {
        this.stgCost = stgCost;
    }

    public BigDecimal getStsCost() {
        return stsCost;
    }

    public void setStsCost(BigDecimal stsCost) {
        this.stsCost = stsCost;
    }

    public BigDecimal getTransExp() {
        return transExp;
    }

    public void setTransExp(BigDecimal transExp) {
        this.transExp = transExp;
    }

    public BigDecimal getIncidentalExp() {
        return incidentalExp;
    }

    public void setIncidentalExp(BigDecimal incidentalExp) {
        this.incidentalExp = incidentalExp;
    }

    public Integer getStrcukNo() {
        return strcukNo;
    }

    public void setStrcukNo(Integer strcukNo) {
        this.strcukNo = strcukNo;
    }

    public Date getSendDate() {
        return sendDate;
    }

    public void setSendDate(Date sendDate) {
        this.sendDate = sendDate;
    }

    public String getTruckDriver() {
        return truckDriver;
    }

    public void setTruckDriver(String truckDriver) {
        this.truckDriver = truckDriver == null ? null : truckDriver.trim();
    }

    public String getTruckNo() {
        return truckNo;
    }

    public void setTruckNo(String truckNo) {
        this.truckNo = truckNo == null ? null : truckNo.trim();
    }

    public Integer getSainputId() {
        return sainputId;
    }

    public void setSainputId(Integer sainputId) {
        this.sainputId = sainputId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public Sainput getSainput() {
        return sainput;
    }

    public void setSainput(Sainput sainput) {
        this.sainput = sainput;
    }

    public String getSummaryState() {
        return summaryState;
    }

    public void setSummaryState(String summaryState) {
        this.summaryState = summaryState;
    }
}