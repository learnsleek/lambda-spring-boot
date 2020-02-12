package com.moneyclub.controller;

import com.moneyclub.dto.*;
import com.moneyclub.exception.APIRequestException;
import com.moneyclub.exception.BusinessException;
import com.moneyclub.services.IMoneyClubService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/apis/mc")
public class MoneyClubController {
    private static final Logger logger = LoggerFactory.getLogger(MoneyClubController.class);

    @Autowired
    IMoneyClubService moneyClubService;

    @RequestMapping({"/getMemberDetail"})
    public ResponseEntity<Object> getMemberDetail(@RequestBody RequestDTO requestDTO) {
        MemberDTO member = null;
        try {
            if (requestDTO.getRequestType() != null && requestDTO.getRequestValue() !=null) {
                logger.info("getMemberDetail :: Started - " + requestDTO.getRequestType() + " request val ::" + requestDTO.getRequestValue());
                member = moneyClubService.getMemberDetail(requestDTO);

            } else {
                return new ResponseEntity(new ErrorDTO(100, "REQUIRED DATA MISSING"), HttpStatus.FORBIDDEN);
            }
        } catch (BusinessException ex) {
            ex.printStackTrace();
            throw new APIRequestException("getMemberDetail :: ", ex);
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new APIRequestException("getMemberDetail :: ", ex);
        }
        logger.info("getMemberDetail :: End - "+ member);
        return new ResponseEntity<>(member, HttpStatus.OK);
    }


    @RequestMapping({"/getClubMember"})
    public ResponseEntity<Object> getClubMember(@RequestBody RequestDTO requestDTO) {
        List<ClubDTO> clubDTOS = null;
        try {
            if (requestDTO.getRequestType() != null && requestDTO.getRequestValue() !=null) {
                logger.info("getClubMember :: Started - " + requestDTO.getRequestType() + " request val ::" + requestDTO.getRequestValue());
                clubDTOS = moneyClubService.getMembersForClub(requestDTO);

            } else {
                return new ResponseEntity(new ErrorDTO(100, "REQUIRED DATA MISSING"), HttpStatus.FORBIDDEN);
            }
        } catch (BusinessException ex) {
            ex.printStackTrace();
            throw new APIRequestException("getClubMember :: ", ex);
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new APIRequestException("getClubMember :: ", ex);
        }
        logger.info("getClubMember :: End - "+ clubDTOS);
        return new ResponseEntity<>(clubDTOS, HttpStatus.OK);
    }

    @RequestMapping({"/getClubMemberDetails"})
    public ResponseEntity<Object> getClubMemberDetails(@RequestBody RequestDTO requestDTO) {
        List<ClubDTO> clubDTOS = null;
        try {
            if (requestDTO.getRequestType() != null && requestDTO.getRequestValue() !=null) {
                logger.info("getClubMemberDetails :: Started - " + requestDTO.getRequestType() + " request val ::" + requestDTO.getRequestValue());
                clubDTOS = moneyClubService.getMembersDetailsForClub(requestDTO.getRequestType(),requestDTO.getRequestValue(), requestDTO.getRequestStatus());

            } else {
                return new ResponseEntity(new ErrorDTO(100, "REQUIRED DATA MISSING"), HttpStatus.FORBIDDEN);
            }
        } catch (BusinessException ex) {
            ex.printStackTrace();
            throw new APIRequestException("getClubMemberDetails :: ", ex);
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new APIRequestException("getClubMemberDetails :: ", ex);
        }
        logger.info("getClubMemberDetails :: End - "+ clubDTOS);
        return new ResponseEntity<>(clubDTOS, HttpStatus.OK);
    }
}
