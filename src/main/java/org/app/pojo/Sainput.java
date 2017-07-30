package org.app.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Sainput {
    private Integer id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;

    private String station;

    private String corp;

    private String goodName;

    private String cntrPlace;

    private String billType;

    private String cntrType;

    private String billNo;

    private String cntrOwner;

    private String cntrNo;

    private Integer lockNo;

    private String flag;
    
    private String incomeState;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station == null ? null : station.trim();
    }

    public String getCorp() {
        return corp;
    }

    public void setCorp(String corp) {
        this.corp = corp == null ? null : corp.trim();
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName == null ? null : goodName.trim();
    }

    public String getCntrPlace() {
        return cntrPlace;
    }

    public void setCntrPlace(String cntrPlace) {
        this.cntrPlace = cntrPlace == null ? null : cntrPlace.trim();
    }

    public String getBillType() {
        return billType;
    }

    public void setBillType(String billType) {
        this.billType = billType == null ? null : billType.trim();
    }

    public String getCntrType() {
        return cntrType;
    }

    public void setCntrType(String cntrType) {
        this.cntrType = cntrType == null ? null : cntrType.trim();
    }

    public String getBillNo() {
        return billNo;
    }

    public void setBillNo(String billNo) {
        this.billNo = billNo == null ? null : billNo.trim();
    }

    public String getCntrOwner() {
        return cntrOwner;
    }

    public void setCntrOwner(String cntrOwner) {
        this.cntrOwner = cntrOwner == null ? null : cntrOwner.trim();
    }

    public String getCntrNo() {
        return cntrNo;
    }

    public void setCntrNo(String cntrNo) {
        this.cntrNo = cntrNo == null ? null : cntrNo.trim();
    }

    public Integer getLockNo() {
        return lockNo;
    }

    public void setLockNo(Integer lockNo) {
        this.lockNo = lockNo;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public String getIncomeState() {
        return incomeState;
    }

    public void setIncomeState(String incomeState) {
        this.incomeState = incomeState;
    }
}