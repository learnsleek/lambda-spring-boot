package com.moneyclub.services;

import com.moneyclub.dto.ClubDTO;
import com.moneyclub.dto.MemberDTO;
import com.moneyclub.dto.RequestDTO;
import com.moneyclub.exception.BusinessException;

import java.util.List;


public interface IMoneyClubService {

    MemberDTO getMemberDetail(RequestDTO requestDTO) throws BusinessException;
    List<ClubDTO> getMembersForClub(RequestDTO requestDTO) throws BusinessException;
    ClubDTO getMembersDetailsForClub(final String requestType, final String requestValue, final String status) throws BusinessException;

}
