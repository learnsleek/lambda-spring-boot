package com.moneyclub.services;

import com.moneyclub.dto.CampaignDetailDTO;
import com.moneyclub.dto.CampaignReportDTO;
import com.moneyclub.dto.InvitationDTO;
import com.moneyclub.exception.BusinessException;

import java.util.List;

public interface ICampaign {

    List<InvitationDTO> getCampaignList(final long campaignId, final int status) throws BusinessException;
    Boolean updateCampaignStatus(long id, int status, String comments) throws BusinessException;
    List<CampaignReportDTO> getCampaignReportSummary(final long campaignId, final String campaignDate) throws BusinessException;
    List<CampaignDetailDTO> getCampaignReportDetails(final long campaignId) throws BusinessException;


}
