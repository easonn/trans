package org.app.pojo;

public class Corporation {
    private String corpId;

    private String corpName;

    private String corpPhone;

    private String corpAddress;

    private String corpPayer;

    private String consignee;

    private String bankNo;

    private String dtpg;

    public String getCorpId() {
        return corpId;
    }

    public void setCorpId(String corpId) {
        this.corpId = corpId == null ? null : corpId.trim();
    }

    public String getCorpName() {
        return corpName;
    }

    public void setCorpName(String corpName) {
        this.corpName = corpName == null ? null : corpName.trim();
    }

    public String getCorpPhone() {
        return corpPhone;
    }

    public void setCorpPhone(String corpPhone) {
        this.corpPhone = corpPhone;
    }

    public String getCorpAddress() {
        return corpAddress;
    }

    public void setCorpAddress(String corpAddress) {
        this.corpAddress = corpAddress == null ? null : corpAddress.trim();
    }

    public String getCorpPayer() {
        return corpPayer;
    }

    public void setCorpPayer(String corpPayer) {
        this.corpPayer = corpPayer == null ? null : corpPayer.trim();
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee == null ? null : consignee.trim();
    }

    public String getBankNo() {
        return bankNo;
    }

    public void setBankNo(String bankNo) {
        this.bankNo = bankNo;
    }

    public String getDtpg() {
        return dtpg;
    }

    public void setDtpg(String dtpg) {
        this.dtpg = dtpg == null ? null : dtpg.trim();
    }
}