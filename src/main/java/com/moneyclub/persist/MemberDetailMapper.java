package com.moneyclub.persist;


import com.moneyclub.model.ClubEntity;
import com.moneyclub.model.MemberEntity;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDetailMapper implements RowMapper<ClubEntity> {

    @Override
    public ClubEntity mapRow(ResultSet rs, int i) throws SQLException {
        MemberEntity memberEntity = new MemberEntity();
        memberEntity.setEmail(rs.getString("email"));
        memberEntity.setFirstName(rs.getString("firstname"));
        memberEntity.setLastName(rs.getString("lastname"));
        memberEntity.setMemberId(rs.getLong("memberid"));
        memberEntity.setMobile(rs.getLong("mobile"));
        memberEntity.setRegisterDate(rs.getDate("register_date"));
        memberEntity.setGender(rs.getString("gender"));
        memberEntity.setMonthlyincome(rs.getString("monthlyincome"));
        memberEntity.setOccupation(rs.getString("occupation"));
        memberEntity.setCity(rs.getString("city"));
        memberEntity.setOrganization(rs.getString("organization"));
        memberEntity.setMotivation(rs.getString("motivation"));

        ClubEntity clubEntity = new ClubEntity();
        clubEntity.setClubId(rs.getLong("clubid"));
        clubEntity.setClubName(rs.getString("clubname"));
        clubEntity.setOwnerMemberId(rs.getLong("ownermemberid"));
        clubEntity.setMemberId(rs.getLong("memberid"));
        clubEntity.setMemberEntity(memberEntity);
        return clubEntity;
    }
}
