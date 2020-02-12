package com.moneyclub.persist;


import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.CampaignEntity;
import com.moneyclub.model.CampaignReport;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface ICampaignRepository {
    List<CampaignEntity> findByCampaignAndStatus(final long campaignId, final int status) throws PersistentException;
    List<CampaignReport> generateCampaignReport(final long campaignId, final String campaignDate) throws PersistentException;
    List<CampaignEntity> generateCampaignReportDetails(final long campaignId) throws PersistentException;
    List<CampaignEntity> findByEntityTypeAndEntityVal(final String entityType, final String entityValue) throws PersistentException;
    List<CampaignEntity>  findById(final Long id) throws PersistentException;
    int updateStatus(final long id, final int status, final String comments) throws PersistentException;

}
