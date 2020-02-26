package com.moneyclub.services;

import com.moneyclub.constant.AppConstants;
import com.moneyclub.dto.*;
import com.moneyclub.exception.BusinessException;
import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.Campaign;
import com.moneyclub.model.CampaignData;
import com.moneyclub.model.CampaignEntity;
import com.moneyclub.model.CampaignReport;
import com.moneyclub.persist.ICampaignRepository;
import com.moneyclub.services.core.IBaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CampaignService implements IBaseService<CampaignDTO, DTO> {
    private static final Logger logger = LoggerFactory.getLogger(CampaignService.class);

    @Autowired
    ICampaignRepository campaignRepository;

    @Override
    public CampaignDTO getById(Integer requestId) throws BusinessException {
        return null;
    }

    @Override
    public ResponseDTO create(CampaignDTO request) throws BusinessException {
        logger.info("request ::" + request.getName());
        int campaignId =-1;
        try {
        Campaign campaign = new Campaign();
        campaign.setName(request.getName());
        if(request.getType() != null && request.getType().equalsIgnoreCase(AppConstants.WHATSAPP)){
            campaign.setType(AppConstants.MOBILE);
        }
        campaign.setStatus(AppConstants.ACTIVE);
        campaign.setDesc(request.getDesc());


        List<CampaignDetailDTO> campaignDetailDTOList =
                        request.getCampaignDetailsList();
        if(campaignDetailDTOList != null && campaignDetailDTOList.size() >0 ) {
            List<CampaignData> campaignDataList = new ArrayList<>();
            campaignDetailDTOList.forEach(campaignDetailDTO -> {
                CampaignData campaignData = new CampaignData();
                campaignData.setRequestType(campaignDetailDTO.getEntityValue());
                if (campaignDetailDTO.getMessage() != null) {
                    campaignData.setMessage(campaignDetailDTO.getMessage());
                } else {
                    campaignData.setMessage(request.getMessage());
                }
                campaignData.setDesc(campaignDetailDTO.getComments());
                campaignDataList.add(campaignData);
            });
            campaign.setCampaignData(campaignDataList);
        }
            campaignId = campaignRepository.createCampaign(campaign);
            logger.info("campainId ::" + campaignId);

            if(campaignId>0){
               return new ResponseDTO(AppConstants.SUCCESS_CODE, AppConstants.SUCCESS);
            }
        } catch(PersistentException se){
            se.printStackTrace();
            throw new BusinessException("create method" , se);
        }catch(Exception e){
            e.printStackTrace();
            throw new BusinessException("create method" , e);
        }
        return null;
    }

    @Override
    public List<CampaignDTO> getAll() throws BusinessException {
        List<CampaignDTO> campaignDTOList  = new ArrayList<>();
        CampaignDTO campaignDTO = new CampaignDTO();
        campaignDTO.setName("Campaign1");
        campaignDTO.setMessage("Campaign Message");
        campaignDTOList.add(campaignDTO);
        return campaignDTOList;
    }

    public List<CampaignDTO> getCampaignReportSummary(long campaignId, String campaignDate) throws BusinessException {
        List<CampaignDTO> CampaignDTOList = new ArrayList<>();
        List<CampaignReport> campaignReportList = campaignRepository.generateCampaignReportSummary(campaignId, campaignDate);
        if(campaignReportList != null && campaignReportList.size() >0) {
            for(CampaignReport campaignReport : campaignReportList) {
                CampaignDTO campaignDTO = new CampaignDTO();
                campaignDTO.setId(campaignReport.getCampaignId());
                campaignDTO.setStatusTxt(campaignReport.getStatus());
                campaignDTO.setName(campaignReport.getCampaignName());
                campaignDTO.setCount(Math.toIntExact(campaignReport.getCount()));
                CampaignDTOList.add(campaignDTO);
            }
        }
        return CampaignDTOList;
    }


    public CampaignDTO getCampaignReportDetails(long campaignId) throws BusinessException {
        CampaignDTO campaignDTO = null;
        List<CampaignEntity> campaignList = campaignRepository.generateCampaignReportDetails(campaignId);
        if(campaignList != null && campaignList.size() >0) {
            campaignDTO = new CampaignDTO();
            List<CampaignDetailDTO> campaignDetailDTOS =  new ArrayList<>();
            for(CampaignEntity campaignReport : campaignList) {
                CampaignDetailDTO campaignDetailDTO = new CampaignDetailDTO();
                campaignDetailDTO.setCampaignName(campaignReport.getCampaignName());
                campaignDetailDTO.setStartDate(campaignReport.getCreationDateTime());
                campaignDetailDTO.setEndDate(campaignReport.getSentDateTime());
                campaignDetailDTO.setCampaignId(campaignReport.getCampaignId());
                campaignDetailDTO.setStatusVal(campaignReport.getStatusVal());
                campaignDetailDTO.setEntityType(campaignReport.getEntityType());
                campaignDetailDTO.setEntityValue(campaignReport.getEntityVal());
                campaignDetailDTO.setStatusVal(campaignReport.getStatusVal());
                campaignDetailDTO.setMessage(campaignReport.getMessage());
                campaignDetailDTO.setClubName(campaignReport.getClubname());
                campaignDetailDTO.setComments(campaignReport.getComments());
                campaignDetailDTOS.add(campaignDetailDTO);

            }
            campaignDTO.setName(campaignList.get(0).getCampaignName());
            campaignDTO.setCampaignDetailsList(campaignDetailDTOS);
        }
        return campaignDTO;
    }

    @Override
    public ResponseDTO patch(Integer id, DTO partial) throws BusinessException {
        return null;
    }

    @Override
    public ResponseDTO update(Integer id, CampaignDTO request) throws BusinessException {
        return null;
    }

    @Override
    public ResponseDTO delete(Integer id) throws BusinessException {
        return null;
    }
}
