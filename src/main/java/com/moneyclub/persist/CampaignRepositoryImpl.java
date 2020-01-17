package com.moneyclub.persist;

import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.CampaignEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CampaignRepositoryImpl implements ICampaignRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<CampaignEntity> findByCampaignAndStatus(final int campaignId, final String status) throws PersistentException {

        List<CampaignEntity> campaignEntityList = null;

        try {
            campaignEntityList = jdbcTemplate.query(
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
                                    rs.getString("status"),
                                    rs.getString("comments"),
                                    rs.getString("clubname")
                            )
            );
        } catch (DataAccessException ex) {
            throw new PersistentException("Error querying findByCampaignAndStatus from database", ex);
        }
        return campaignEntityList;
    }

    @Override
    public List<CampaignEntity> findByEntityTypeAndEntityVal(String entityType, String entityValue) throws PersistentException {

        List<CampaignEntity> campaignEntityList = null;
        try {
            campaignEntityList = jdbcTemplate.query(
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
                                    rs.getString("status"),
                                    rs.getString("comments"),
                                    rs.getString("clubname")
                            )
            );
        } catch (DataAccessException ex) {
            throw new PersistentException("Error querying findByCampaignAndStatus from database", ex);
        }
        return campaignEntityList;
    }

    public int updateStatus(final long id, final String status, final String comments) throws PersistentException {
        int stat;
        try {
            stat = jdbcTemplate.update(
                    "update mc_campaign_details set status = ?, comments =?, sentDateTime= now() where id=?",
                    status, comments, id);
        } catch (DataAccessException ex) {
            throw new PersistentException("Error querying findByCampaignAndStatus from database", ex);
        }
        return stat;
    }
}
