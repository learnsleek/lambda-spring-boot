package com.moneyclub.model;

import java.sql.Timestamp;
import java.util.List;

public class Campaign {
    private long id;
    private int status;
    private String name;
    private String type;
    private Timestamp createdTime;
    private Timestamp dispatchTime;
    private String desc;
    private List<CampaignData> campaignData;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Timestamp getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Timestamp createdTime) {
        this.createdTime = createdTime;
    }

    public Timestamp getDispatchTime() {
        return dispatchTime;
    }

    public void setDispatchTime(Timestamp dispatchTime) {
        this.dispatchTime = dispatchTime;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public List<CampaignData> getCampaignData() {
        return campaignData;
    }

    public void setCampaignData(List<CampaignData> campaignData) {
        this.campaignData = campaignData;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
