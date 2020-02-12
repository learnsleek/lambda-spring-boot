package com.moneyclub.dto;

public class CampaignReportDTO {

    private Long campaignId;
    private String campaignName;
    private String status;
    private Long count;

    public CampaignReportDTO(long campaignId, String campaignName,
                          String status, long count){
        this.campaignId = campaignId;
        this.campaignName = campaignName;
        this.status = status;
        this.count = count;
    }

    public CampaignReportDTO(){
    }


    public Long getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(Long campaignId) {
        this.campaignId = campaignId;
    }

    public String getCampaignName() {
        return campaignName;
    }

    public void setCampaignName(String campaignName) {
        this.campaignName = campaignName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }
}
