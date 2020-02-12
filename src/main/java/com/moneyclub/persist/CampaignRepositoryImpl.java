package com.moneyclub.persist;

import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.CampaignEntity;
import com.moneyclub.model.CampaignReport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.time.LocalDate;
import java.util.Date;
import java.util.List;


@Repository
public class CampaignRepositoryImpl implements ICampaignRepository {

    private static final Logger logger = LoggerFactory.getLogger(CampaignRepositoryImpl.class);


    @Autowired
    JdbcTemplate jdbcTemplateMarketing;

    @Override
    public List<CampaignEntity> findByCampaignAndStatus(final long campaignId, final int status) throws PersistentException {

        List<CampaignEntity> campaignEntityList = null;

        try {
            campaignEntityList = jdbcTemplateMarketing.query(
                    "select * from mc_campaign_details where campaign_id = ? and status = ?",
                    new Object[]{campaignId, status},
                    (rs, rowNum) ->
                            new CampaignEntity(
                                    rs.getLong("id"),
                                    rs.getDate("creationDateTime"),
                                    rs.getDate("sentDateTime"),
                                    rs.getString("entityType"),
                                    rs.getString("entityValue"),
                                    rs.getString("message"),
                                    rs.getInt("status"),
                                    rs.getString("comments"),
                                    rs.getString("clubname"),
                                    rs.getLong("campaign_id")
                            )
            );
        } catch (DataAccessException ex) {
            throw new PersistentException("Error querying findByCampaignAndStatus from database", ex);
        }
        return campaignEntityList;
    }

    @Override
    public List<CampaignReport> generateCampaignReport(long campaignId, String campaignDate) throws PersistentException {
        List<CampaignReport> campaignReportList = null;
        try {
            campaignReportList = jdbcTemplateMarketing.query("SELECT * from campaign_report(?, ?)",
                    new Object[] {campaignId, campaignDate},
                    (rs, rowNum) ->
                            new CampaignReport(
                                    rs.getLong("campaign_id"),
                                    rs.getString("name"),
                                    rs.getString("status"),
                                    rs.getLong("cnt")
                                    )
            );

            logger.info("campaignReports :: " + campaignReportList);
        } catch (DataAccessException ex) {
            ex.printStackTrace();
            throw new PersistentException("Error querying generateCampaignReport from database", ex);
        } catch (Exception ex){
            ex.printStackTrace();
            throw new PersistentException("Error querying generateCampaignReport from database", ex);
        }
        return campaignReportList;
    }

    @Override
    public List<CampaignEntity> generateCampaignReportDetails(long campaignId) throws PersistentException {
        List<CampaignEntity> campaignEntityList = null;
        try {
            campaignEntityList = jdbcTemplateMarketing.query("SELECT * from campaign_report_details(?)",
                    new Object[] {campaignId},
                    (rs, rowNum) ->
                            new CampaignEntity(
                                    rs.getDate("creationtime"),
                                    rs.getDate("senttime"),
                                    rs.getString("entitytyp"),
                                    rs.getString("entityvalu"),
                                    rs.getString("stat"),
                                    rs.getString("comment"),
                                    rs.getString("clubnam")
                            )
            );

            logger.info("generateCampaignReportDetails :: " + campaignEntityList);
        } catch (DataAccessException ex) {
            ex.printStackTrace();
            throw new PersistentException("Error querying generateCampaignReportDetails from database", ex);
        } catch (Exception ex){
            ex.printStackTrace();
            throw new PersistentException("Error querying generateCampaignReportDetails from database", ex);
        }
        return campaignEntityList;
    }

    @Override
    public List<CampaignEntity> findByEntityTypeAndEntityVal(String entityType, String entityValue) throws PersistentException {

        List<CampaignEntity> campaignEntityList = null;
        try {
            campaignEntityList = jdbcTemplateMarketing.query(
                    "select * from mc_campaign_details where  entitytype = ? and entityvalue = ?",
                    new Object[]{entityType, entityValue},
                    (rs, rowNum) ->
                            new CampaignEntity(
                                    rs.getLong("id"),
                                    rs.getDate("creationDateTime"),
                                    rs.getDate("sentDateTime"),
                                    rs.getString("entityType"),
                                    rs.getString("entityValue"),
                                    rs.getString("message"),
                                    rs.getInt("status"),
                                    rs.getString("comments"),
                                    rs.getString("clubname"),
                                    rs.getLong("campaign_id")
                            )
            );
        } catch (DataAccessException ex) {
            throw new PersistentException("Error querying findByCampaignAndStatus from database", ex);
        }
        return campaignEntityList;
    }

    @Override
    public List<CampaignEntity>  findById(Long id) throws PersistentException {
        List<CampaignEntity> campaignEntityList = null;
        try {
            campaignEntityList = jdbcTemplateMarketing.query(
                    "select * from mc_campaign_details where  id = ?",
                    new Object[]{id},
                    (rs, rowNum) ->
                            new CampaignEntity(
                                    rs.getLong("id"),
                                    rs.getDate("creationDateTime"),
                                    rs.getDate("sentDateTime"),
                                    rs.getString("entityType"),
                                    rs.getString("entityValue"),
                                    rs.getString("message"),
                                    rs.getInt("status"),
                                    rs.getString("comments"),
                                    rs.getString("clubname"),
                                    rs.getLong("campaign_id")
                            )
            );
        } catch (DataAccessException ex) {
            throw new PersistentException("Error querying findById from database", ex);
        }
        return campaignEntityList;
    }

    @Transactional
    public int updateStatus(final long id, final int status, final String comments) throws PersistentException {
        int stat;
        try {
            stat = jdbcTemplateMarketing.update(
                    "update mc_campaign_details set status = ?, comments =?, sentDateTime= now() where id=?",
                    status, comments, id);
        } catch (DataAccessException ex) {
            throw new PersistentException("Error querying updateStatus from database", ex);
        }
        return stat;
    }
}
