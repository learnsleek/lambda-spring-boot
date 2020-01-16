package com.moneyclub.controller;

import com.moneyclub.dto.InvitationDTO;
import com.moneyclub.exception.APIRequestException;
import com.moneyclub.exception.BusinessException;
import com.moneyclub.exception.PersistentException;
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

    @RequestMapping({ "/getList" })
    public ResponseEntity<List<InvitationDTO>> groupInvitation() {
        List<InvitationDTO>  invitationList = null;
        try {
            logger.info("groupInvitation :: Started - ");
            invitationList = campaignService.getCampaignList();
        }catch (BusinessException ex){
            logger.error("groupInvitation :: Started - ");
            ex.printStackTrace();
            throw new APIRequestException("groupInvitation :: ", ex);
        }catch (Exception ex){
            ex.printStackTrace();
            throw new APIRequestException("groupInvitation :: ", ex);
        }
        return new ResponseEntity<>(invitationList, HttpStatus.OK);
    }

    @PostMapping(path = "/updateCampaign", consumes = "application/json", produces = "application/json")
    public ResponseEntity<Boolean> updateCampaignStatus(@RequestBody InvitationDTO invitationDTO) {
         Boolean status= null;
        try {
            logger.info("groupInvitation :: Started - ");
            if(invitationDTO.getEntityType() != null && invitationDTO.getEntityvalue() != null && invitationDTO.getMessage() !=null)
                status = campaignService.updateCampaignStatus(invitationDTO.getEntityType(), invitationDTO.getEntityvalue(), invitationDTO.getStatus(), invitationDTO.getMessage());

        }catch (PersistentException ex){
            logger.error("groupInvitation :: Started - ");
            ex.printStackTrace();
            throw new APIRequestException("updateCampaignStatus :: ", ex);
        }catch (BusinessException ex){
            logger.error("groupInvitation :: Started - ");
            ex.printStackTrace();
            throw new APIRequestException("updateCampaignStatus :: ", ex);
        }catch (Exception ex){
            ex.printStackTrace();
            throw new APIRequestException("updateCampaignStatus :: ", ex);
        }
        return new ResponseEntity<Boolean>(status, HttpStatus.OK);
    }
}
