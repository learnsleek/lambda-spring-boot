package com.moneyclub.model;

import java.util.Date;

public class CampaignEntity {

    private Long id;
    private Date creationDateTime;
    private Date sentDateTime;
    private String entityType;
    private String entityVal;
    private String message;
    private String status;
    private String comments;
    private String clubname;


    public  CampaignEntity(Long id, Date creationDateTime, Date sentDateTime,
                           String entityType, String entityVal, String message,
                           String status, String comments, String clubname){
        this.id =id;
        this.sentDateTime = sentDateTime;
        this.creationDateTime = creationDateTime;
        this.entityType = entityType;
        this.entityVal = entityVal;
        this.message = message;
        this.status = status;
        this.comments =comments;
        this.clubname = clubname;
    }
    public CampaignEntity(){

    }


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

    public String getEntityVal() {
        return entityVal;
    }

    public void setEntityVal(String entityVal) {
        this.entityVal = entityVal;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Date getCreationDateTime() {
        return creationDateTime;
    }

    public void setCreationDateTime(Date creationDateTime) {
        this.creationDateTime = creationDateTime;
    }

    public Date getSentDateTime() {
        return sentDateTime;
    }

    public void setSentDateTime(Date sentDateTime) {
        this.sentDateTime = sentDateTime;
    }

    public String getClubname() {
        return clubname;
    }

    public void setClubname(String clubname) {
        this.clubname = clubname;
    }

    @Override
    public String toString() {
        return "CampaignEntity [id=" + id + ", entityType=" + entityType +
                ", entityVal=" + entityVal + ", clubname=" + clubname + "]";
    }
}
