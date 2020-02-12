package com.moneyclub.dto;

import java.util.Date;

public class CampaignDTO {

    private Long id;
    private Long campaignId;
    private String entityType;
    private String entityValue;
    private String message;
    private int status;
    private String statusVal;
    private Date startDate;
    private Date endDate;
    private String comments;
    private String clubName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEntityType() {
        return entityType;
    }

    public void setEntityType(String entityType) {
        this.entityType = entityType;
    }

    public String getEntityValue() {
        return entityValue;
    }
    public void setEntityValue(String entityValue) {
        this.entityValue = entityValue;
    }
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Long getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(final Long campaignId) {
        this.campaignId = campaignId;
    }

    public String getStatusVal() {
        return statusVal;
    }

    public void setStatusVal(String statusVal) {
        this.statusVal = statusVal;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

}
