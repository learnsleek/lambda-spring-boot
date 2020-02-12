package com.moneyclub.persist;

import com.moneyclub.exception.PersistentException;
import com.moneyclub.model.ClubEntity;
import com.moneyclub.model.MemberEntity;

import java.util.List;

public interface IMoneyClubRepository {

    MemberEntity getMemberDetails(final String requestType, final String requestValue) throws PersistentException;
    List<ClubEntity> getMembersForClub(final String requestType, final String requestValue, String status) throws PersistentException;
    List<ClubEntity> getMembersDetailsForClub(final String requestType, final String requestValue, String status) throws PersistentException;

}
