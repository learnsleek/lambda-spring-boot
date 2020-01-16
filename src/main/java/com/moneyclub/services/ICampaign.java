package com.moneyclub.services;

import com.moneyclub.dto.InvitationDTO;
import com.moneyclub.exception.BusinessException;

import java.util.List;

public interface ICampaign {

    List<InvitationDTO> getCampaignList() throws BusinessException;
    Boolean updateCampaignStatus(String entityType, String entityValue, String status, String comments) throws BusinessException;
}
