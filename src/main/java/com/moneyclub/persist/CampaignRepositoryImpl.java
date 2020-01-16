package com.moneyclub.persist;

import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.CampaignEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CampaignRepositoryImpl implements  ICampaignRepository{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<CampaignEntity> findAll() throws PersistentException {

        return jdbcTemplate.query(
                "select * from mc_campaign",
                (rs, rowNum) ->
                        new CampaignEntity(
                                rs.getLong("id"),
                                rs.getDate("creationDateTime"),
                                rs.getString("entityType"),
                                rs.getString("entityValue"),
                                rs.getString("message"),
                                rs.getString("status"),
                                rs.getString("comments")
                                )
        );
    }

    @Override
    public List<CampaignEntity> findByEntityTypeAndEntityVal(String entityType, String entityValue) throws PersistentException {
        return jdbcTemplate.query(
                "select * from mc_campaign where  entitytype = ? and entityvalue = ?",
                new Object[] { entityType, entityValue },
                (rs, rowNum) ->
                        new CampaignEntity(
                                rs.getLong("id"),
                                rs.getDate("creationDateTime"),
                                rs.getString("entityType"),
                                rs.getString("entityValue"),
                                rs.getString("message"),
                                rs.getString("status"),
                                rs.getString("comments")
                        )
        );
    }

    public int updateStatus(final long id, final String status, final String comments) throws PersistentException {
        return jdbcTemplate.update(
                "update mc_campaign set status = ?, comments =? where id=?",
                status, comments, id);
    }
}
