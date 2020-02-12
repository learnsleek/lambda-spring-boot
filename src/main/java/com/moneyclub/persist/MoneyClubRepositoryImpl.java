package com.moneyclub.persist;

import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.ClubEntity;
import com.moneyclub.model.MemberEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MoneyClubRepositoryImpl implements IMoneyClubRepository {
    private static final Logger logger = LoggerFactory.getLogger(MoneyClubRepositoryImpl.class);

    @Autowired
    JdbcTemplate jdbcTemplateMc;

    @Override
    public MemberEntity getMemberDetails(String requestType, String requestValue) throws PersistentException {
        MemberEntity moMemberEntity = null;
        try {
            List<MemberEntity> memberEntityList = jdbcTemplateMc.query("select * from getMemberDetail(?, ?)",
                    new Object[] {requestType, requestValue},
                    (rs, rowNum) ->
                            new MemberEntity(
                                    rs.getLong("memberid"),
                                    rs.getString("firstname"),
                                    rs.getString("lastname"),
                                    rs.getString("email"),
                                    rs.getLong("mobile"),
                                    rs.getDate("register_date"),
                                    rs.getString("gender"),
                                    rs.getString("monthlyincome"),
                                    rs.getString("occupation"),
                                    rs.getString("city"),
                                    rs.getString("organization"),
                                    rs.getString("motivation")

                            )
            );
            if(!memberEntityList.isEmpty() && memberEntityList.size() > 0){
                moMemberEntity = memberEntityList.get(0);
                logger.info("Member Found :: ", moMemberEntity);
            }

        } catch (DataAccessException ex) {
            ex.printStackTrace();
            throw new PersistentException("Error querying getMemberDetails from database", ex);
        } catch (Exception ex){
            ex.printStackTrace();
            throw new PersistentException("Error querying getMemberDetails from database", ex);
        }
        return moMemberEntity;
    }

    @Override
    public List<ClubEntity> getMembersForClub(String requestType, String requestValue, String status) throws PersistentException {
        List<ClubEntity> clubMembers =null;
        try {
            clubMembers = jdbcTemplateMc.query("select * from getMembersForClub(?, ?, ?)",
                    new Object[] {requestType, requestValue, status},
                    (rs, rowNum) ->
                            new ClubEntity(
                                    rs.getLong("clubid"),
                                    rs.getString("clubname"),
                                    rs.getLong("ownermemberid"),
                                    rs.getLong("memberid")
                            )
            );

        } catch (DataAccessException ex) {
            ex.printStackTrace();
            throw new PersistentException("Error querying getMembersForClub from database", ex);
        } catch (Exception ex){
            ex.printStackTrace();
            throw new PersistentException("Error querying getMembersForClub from database", ex);
        }
        return clubMembers;
    }

    @Override
    public List<ClubEntity> getMembersDetailsForClub(String requestType, String requestValue, String status) throws PersistentException {
        List<ClubEntity> clubMembers =null;
        try {
            clubMembers = jdbcTemplateMc.query("select * from getMembersDetailsForClub(?, ?, ?)",
                    new Object[] {requestType, requestValue, status},
                    new MemberDetailMapper()
            );

        } catch (DataAccessException ex) {
            ex.printStackTrace();
            throw new PersistentException("Error querying getMembersDetailsForClub from database", ex);
        } catch (Exception ex){
            ex.printStackTrace();
            throw new PersistentException("Error querying getMembersDetailsForClub from database", ex);
        }
        return clubMembers;
    }
}
