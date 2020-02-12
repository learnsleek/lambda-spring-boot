package com.moneyclub.services;

import com.moneyclub.dto.CampaignDTO;
import com.moneyclub.dto.CampaignReportDTO;
import com.moneyclub.dto.InvitationDTO;
import com.moneyclub.exception.BusinessException;

import java.util.Date;
import java.util.List;

public interface ICampaign {

    List<InvitationDTO> getCampaignList(final long campaignId, final int status) throws BusinessException;
    Boolean updateCampaignStatus(long id, int status, String comments) throws BusinessException;
    List<CampaignReportDTO> getCampaignReport(final long campaignId, final String campaignDate) throws BusinessException;
    List<CampaignDTO> getCampaignReportDetails(final long campaignId) throws BusinessException;

}
