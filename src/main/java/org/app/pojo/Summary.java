package org.app.pojo;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Summary {
    private Integer id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date checkDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date settleDate;

    private String sendStation;

    private String sendCorp;

    private String goodName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date saDate;

    private String arriveStation;

    private String arriveCorp;

    private String cntrPlace;

    private String billType;

    private String cntrType;

    private String billNo;

    private String cntrOwner;

    private String cntrNo;

    private Integer lockNo;

    private String consignee;

    private String shipaddress;

    private String phone;

    private String struckNo;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date sendDate;

    private String truckDriver;

    private String truckMo;

    private String repaCorp;

    private String repaProjc;

    private BigDecimal price;

    private Integer quantity;

    private BigDecimal actReceivable;

    private String flag;

    private Integer incomeId;

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

    public String getSendCorp() {
        return sendCorp;
    }

    public void setSendCorp(String sendCorp) {
        this.sendCorp = sendCorp == null ? null : sendCorp.trim();
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName == null ? null : goodName.trim();
    }

    public Date getSaDate() {
        return saDate;
    }

    public void setSaDate(Date saDate) {
        this.saDate = saDate;
    }

    public String getArriveStation() {
        return arriveStation;
    }

    public void setArriveStation(String arriveStation) {
        this.arriveStation = arriveStation == null ? null : arriveStation.trim();
    }

    public String getArriveCorp() {
        return arriveCorp;
    }

    public void setArriveCorp(String arriveCorp) {
        this.arriveCorp = arriveCorp == null ? null : arriveCorp.trim();
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

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee == null ? null : consignee.trim();
    }

    public String getShipaddress() {
        return shipaddress;
    }

    public void setShipaddress(String shipaddress) {
        this.shipaddress = shipaddress == null ? null : shipaddress.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getStruckNo() {
        return struckNo;
    }

    public void setStruckNo(String struckNo) {
        this.struckNo = struckNo == null ? null : struckNo.trim();
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

    public String getTruckMo() {
        return truckMo;
    }

    public void setTruckMo(String truckMo) {
        this.truckMo = truckMo == null ? null : truckMo.trim();
    }

    public String getRepaCorp() {
        return repaCorp;
    }

    public void setRepaCorp(String repaCorp) {
        this.repaCorp = repaCorp == null ? null : repaCorp.trim();
    }

    public String getRepaProjc() {
        return repaProjc;
    }

    public void setRepaProjc(String repaProjc) {
        this.repaProjc = repaProjc == null ? null : repaProjc.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getActReceivable() {
        return actReceivable;
    }

    public void setActReceivable(BigDecimal actReceivable) {
        this.actReceivable = actReceivable;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public Integer getIncomeId() {
        return incomeId;
    }

    public void setIncomeId(Integer incomeId) {
        this.incomeId = incomeId;
    }
}