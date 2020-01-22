package com.moneyclub.controller;

import com.moneyclub.dto.ErrorDTO;
import com.moneyclub.dto.InvitationDTO;
import com.moneyclub.exception.*;
import com.moneyclub.services.ICampaign;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/apis/campaign")
public class Campaign {

    private static final Logger logger = LoggerFactory.getLogger(Campaign.class);

    @Autowired
    ICampaign campaignService;

    @RequestMapping({"/getList"})
    public ResponseEntity<Object> groupInvitation(@RequestBody InvitationDTO invitationDTO) {
        List<InvitationDTO> invitationList = null;
        try {
            if (invitationDTO.getCampaignId()>0) {
                logger.info("groupInvitation getList:: Started - " + invitationDTO.getStatus());
                invitationList = campaignService.getCampaignList(invitationDTO.getCampaignId(), invitationDTO.getStatus());
            } else {
                return new ResponseEntity(new ErrorDTO(100, "REQUIRED DATA MISSING"), HttpStatus.FORBIDDEN);
            }
        } catch (BusinessException ex) {
            ex.printStackTrace();
            throw new APIRequestException("groupInvitation :: ", ex);
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new APIRequestException("groupInvitation :: ", ex);
        }
        logger.info("groupInvitation getList:: End - "+ invitationList);
        return new ResponseEntity<>(invitationList, HttpStatus.OK);
    }

    @PostMapping(path = "/updateCampaign", consumes = "application/json", produces = "application/json")
    public ResponseEntity<Boolean> updateCampaignStatus(@RequestBody InvitationDTO invitationDTO) {
        Boolean status = null;
        try {

           // if (invitationDTO.getEntityType() != null && invitationDTO.getEntityValue() != null && invitationDTO.getMessage() != null){
                logger.info("updateCampaignStatus:: Started - " + invitationDTO.getEntityValue());
                 status = campaignService.updateCampaignStatus(invitationDTO.getId(), invitationDTO.getStatus(), invitationDTO.getMessage());
           // } else {
           //     return new ResponseEntity(new ErrorDTO(100, "REQUIRED DATA MISSING"), HttpStatus.FORBIDDEN);
            //}


        } catch (PersistentException ex) {
            logger.error("groupInvitation :: Started - ");
            ex.printStackTrace();
            throw new APIRequestException("updateCampaignStatus :: ", ex);
        } catch (BusinessException ex) {
            logger.error("groupInvitation :: Started - ");
            ex.printStackTrace();
            throw new APIRequestException("updateCampaignStatus :: ", ex);
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new APIRequestException("updateCampaignStatus :: ", ex);
        }
        logger.info("updateCampaignStatus :: End - "+ status);
        return new ResponseEntity<Boolean>(status, HttpStatus.OK);
    }
}
