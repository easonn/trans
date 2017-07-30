package org.app.pojo;

public class SummaryWithBLOBs extends Summary {
    private String settleCmt;

    private String comment;

    private Sainput sainput;

    private Income income;

    public String getSettleCmt() {
        return settleCmt;
    }

    public void setSettleCmt(String settleCmt) {
        this.settleCmt = settleCmt == null ? null : settleCmt.trim();
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public Sainput getSainput() {
        return sainput;
    }

    public void setSainput(Sainput sainput) {
        this.sainput = sainput;
    }

    public Income getIncome() {
        return income;
    }

    public void setIncome(Income income) {
        this.income = income;
    }
}