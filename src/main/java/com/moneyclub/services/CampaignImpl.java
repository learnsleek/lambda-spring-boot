package com.moneyclub.services;

import com.moneyclub.dto.CampaignDetailDTO;
import com.moneyclub.dto.CampaignReportDTO;
import com.moneyclub.dto.InvitationDTO;
import com.moneyclub.exception.BusinessException;
import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.CampaignEntity;
import com.moneyclub.model.CampaignReport;
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


    public List<InvitationDTO> getCampaignList(final long campaignId, final int status) throws BusinessException {
        List<InvitationDTO> invitationDTOList = new ArrayList<>();
        try {
            List<CampaignEntity> campaignEntities = campaignRepository.findByCampaignAndStatus(campaignId, status);

            if(campaignEntities != null && !campaignEntities.isEmpty()) {
                invitationDTOList = new ArrayList<>();
                for (CampaignEntity campaign : campaignEntities) {
                    InvitationDTO invitationDTO = new InvitationDTO();
                    invitationDTO.setId(campaign.getId());
                    invitationDTO.setEntityType(campaign.getEntityType());
                    invitationDTO.setEntityValue(campaign.getEntityVal());
                    invitationDTO.setMessage(campaign.getMessage());
                    invitationDTO.setStatus(campaign.getStatus());
                    invitationDTO.setCampaignId(campaign.getCampaignId());
                    invitationDTOList.add(invitationDTO);
                }
            }
        } catch (PersistentException ex){
            throw new BusinessException("Database exception ::", ex);
        }
        return invitationDTOList;
    }

    public Boolean updateCampaignStatus(long id, int status, String comments) throws BusinessException {
        try {
        //List<CampaignEntity>  campaignEntityList = campaignRepository.findByEntityTypeAndEntityVal(entityType, entityValue);
            List<CampaignEntity>  campaignEntityList = campaignRepository.findCampaignDetailsById(id);
        logger.info("id" + id + "campaignEntityList" +campaignEntityList );
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

    @Override
    public List<CampaignReportDTO> getCampaignReportSummary(long campaignId, String campaignDate) throws BusinessException {
        List<CampaignReportDTO> campaignReportDTOList = new ArrayList<>();
        List<CampaignReport> campaignReportList = campaignRepository.generateCampaignReportSummary(campaignId, campaignDate);
        if(campaignReportList != null && campaignReportList.size() >0) {
            for(CampaignReport campaignReport : campaignReportList) {
                CampaignReportDTO campaignReportDTO = new CampaignReportDTO();
                campaignReportDTO.setCampaignId(campaignReport.getCampaignId());
                campaignReportDTO.setStatus(campaignReport.getStatus());
                campaignReportDTO.setCampaignName(campaignReport.getCampaignName());
                campaignReportDTO.setCount(campaignReport.getCount());
                campaignReportDTOList.add(campaignReportDTO);
            }
        }
        return campaignReportDTOList;
    }

    public List<CampaignDetailDTO> getCampaignReportDetails(long campaignId) throws BusinessException {
        List<CampaignDetailDTO> campaignDTOS = new ArrayList<>();
        List<CampaignEntity> campaignList = campaignRepository.generateCampaignReportDetails(campaignId);
        if(campaignList != null && campaignList.size() >0) {
            for(CampaignEntity campaignReport : campaignList) {
                CampaignDetailDTO campaignDTO = new CampaignDetailDTO();
                campaignDTO.setCampaignName(campaignReport.getCampaignName());
                campaignDTO.setStartDate(campaignReport.getCreationDateTime());
                campaignDTO.setEndDate(campaignReport.getSentDateTime());
                campaignDTO.setCampaignId(campaignReport.getCampaignId());
                campaignDTO.setStatusVal(campaignReport.getStatusVal());
                campaignDTO.setEntityType(campaignReport.getEntityType());
                campaignDTO.setEntityValue(campaignReport.getEntityVal());
                campaignDTO.setStatusVal(campaignReport.getStatusVal());
                campaignDTO.setMessage(campaignReport.getMessage());
                campaignDTO.setClubName(campaignReport.getClubname());
                campaignDTO.setComments(campaignReport.getComments());
                campaignDTOS.add(campaignDTO);
            }
        }
        return campaignDTOS;
    }


}
