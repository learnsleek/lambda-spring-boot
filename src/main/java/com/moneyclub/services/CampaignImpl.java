package com.moneyclub.services;

import com.moneyclub.dto.InvitationDTO;
import com.moneyclub.exception.BusinessException;
import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.CampaignEntity;
import com.moneyclub.persist.ICampaignRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CampaignImpl implements ICampaign {

    private static final Logger logger = LoggerFactory.getLogger(CampaignImpl.class);


    @Autowired
    ICampaignRepository campaignRepository;


    public List<InvitationDTO> getCampaignList(final int campaignId, final String status) throws BusinessException {
        List<InvitationDTO> invitationDTOList = null;
        try {
            List<CampaignEntity> campaignEntities = campaignRepository.findByCampaignAndStatus(campaignId, status);

            if(campaignEntities != null && !campaignEntities.isEmpty()) {
                invitationDTOList = new ArrayList<>();
                for (CampaignEntity campaign : campaignEntities) {
                    InvitationDTO invitationDTO = new InvitationDTO();
                    invitationDTO.setEntityType(campaign.getEntityType());
                    invitationDTO.setEntityValue(campaign.getEntityVal());
                    invitationDTO.setMessage(campaign.getMessage());
                    invitationDTO.setStatus(campaign.getStatus());
                    invitationDTOList.add(invitationDTO);
                }
            }
        } catch (PersistentException ex){
            throw new BusinessException("Database exception ::", ex);
        }
        return invitationDTOList;
    }


    public Boolean updateCampaignStatus(String entityType, String entityValue, String status, String comments) throws BusinessException {
        try {
        List<CampaignEntity>  campaignEntityList = campaignRepository.findByEntityTypeAndEntityVal(entityType, entityValue);
        logger.info("entityType, entityValue " +entityType + " :: " + entityValue + "campaignEntityList" +campaignEntityList );
        if(campaignEntityList != null && campaignEntityList.size() >0) {
            CampaignEntity campaignEntity = campaignEntityList.get(0);
            campaignEntity.setStatus(status);
            campaignEntity.setComments(comments);
            campaignRepository.updateStatus(campaignEntity.getId(),  status, comments);
        } else {
            return false;
        }
        } catch (PersistentException ex){
            throw new BusinessException("Database exception ::", ex);
        }
        return true;
    }


}
