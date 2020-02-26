package com.moneyclub.controller;

import com.moneyclub.controller.core.BaseRestController;
import com.moneyclub.dto.CampaignDTO;
import com.moneyclub.dto.DTO;
import com.moneyclub.services.CampaignService;
import com.moneyclub.services.core.IBaseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin(origins = "*")
@Controller
public class CampaignDispatchController extends BaseRestController<CampaignDTO, DTO> {

    private static final Logger logger = LoggerFactory.getLogger(CampaignDispatchController.class);

    @Autowired
    private CampaignService campaignService;

    @RequestMapping(BASE_URL + "/campaign")
    protected IBaseService<CampaignDTO, DTO> baseService() {
        return campaignService;
    }

    @RequestMapping(value = BASE_URL + "/campaign/summary" , method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<List<CampaignDTO>> campaignSummary(@RequestBody CampaignDTO campaignDTO) {
        List<CampaignDTO> campaignDTOList =  campaignService.getCampaignReportSummary(
                campaignDTO.getId(),  campaignDTO.getCreatedTime().toString());
            return ResponseEntity.ok(campaignDTOList);
    }


    @RequestMapping(value = BASE_URL + "/campaign/details", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<CampaignDTO> campaignDetails(@RequestBody CampaignDTO campaignDTO) {
         CampaignDTO campaignDTOResult =  campaignService.getCampaignReportDetails(
                campaignDTO.getId());
        return ResponseEntity.ok(campaignDTOResult);
    }


    @RequestMapping(value = BASE_URL + "/campaign", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<DTO> create(@RequestBody CampaignDTO  request) {
        return ResponseEntity.ok(campaignService.create(request));
    }


    @Override
    public Boolean checkAuthorization() {
        return true;
    }
}
