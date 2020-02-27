package com.moneyclub.services;

import com.moneyclub.dto.ClubDTO;
import com.moneyclub.dto.MemberDTO;
import com.moneyclub.dto.RequestDTO;
import com.moneyclub.exception.BusinessException;
import com.moneyclub.model.ClubEntity;
import com.moneyclub.model.MemberEntity;
import com.moneyclub.persist.IMoneyClubRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MoneyClubServiceImpl implements  IMoneyClubService {

    @Autowired
    IMoneyClubRepository moneyClubRepository;

    @Override
    public MemberDTO getMemberDetail(RequestDTO requestDTO) throws BusinessException {
        MemberDTO memberDTO = null;
        MemberEntity memberEntity = moneyClubRepository.getMemberDetails(requestDTO.getRequestType(), requestDTO.getRequestValue());
        if (memberEntity != null ){
            memberDTO = new MemberDTO();
            memberDTO.setMemberId(memberEntity.getMemberId());
            memberDTO.setEmail(memberEntity.getEmail());
            memberDTO.setFirstName(memberEntity.getFirstName());
            memberDTO.setLastName(memberEntity.getLastName());
            memberDTO.setMobile(memberEntity.getMobile());
            memberDTO.setRegisterDate(memberEntity.getRegisterDate());
            memberDTO.setGender(memberEntity.getGender());
            memberDTO.setMonthlyincome(memberEntity.getMonthlyincome());
            memberDTO.setOccupation(memberEntity.getOccupation());
            memberDTO.setCity(memberEntity.getCity());
            memberDTO.setOrganization(memberEntity.getOrganization());
            memberDTO.setMotivation(memberEntity.getMotivation());
        }
        return memberDTO;
    }

    @Override
    public List<ClubDTO> getMembersForClub(RequestDTO requestDTO) throws BusinessException {
        List<ClubDTO> clubDTOS = null;
        List<ClubEntity>  clubEntities = moneyClubRepository.getMembersForClub(requestDTO.getRequestType(), requestDTO.getRequestValue(), requestDTO.getRequestStatus());
        if (clubEntities != null & clubEntities.size() >0){
            clubDTOS = new ArrayList<>();
            for(ClubEntity clubEntity  : clubEntities) {
                ClubDTO club = new ClubDTO();
                club.setClubId(clubEntity.getClubId());
                club.setClubName(clubEntity.getClubName());
                club.setMemberId(clubEntity.getMemberId());
                club.setOwnerMemberId(clubEntity.getOwnerMemberId());
                clubDTOS.add(club);
            }
        }
        return clubDTOS;
    }

    @Override
    public ClubDTO getMembersDetailsForClub(final String requestType, final String requestValue, final String status) throws BusinessException {
        ClubDTO club = null;
        List<ClubEntity>  clubEntities = moneyClubRepository.getMembersDetailsForClub(requestType, requestValue, status);
        if (clubEntities != null & clubEntities.size() >0){
             club = new ClubDTO();
             List<MemberDTO> memberDTOList = new ArrayList<>();
            for(ClubEntity clubEntity  : clubEntities) {
                club.setClubId(clubEntity.getClubId());
                club.setClubName(clubEntity.getClubName());
                club.setMemberId(clubEntity.getMemberId());
                club.setOwnerMemberId(clubEntity.getOwnerMemberId());
                if(clubEntity.getMemberEntity() != null) {
                    MemberDTO memberDTO = new MemberDTO();
                    if(clubEntity.getMemberEntity().getRegisterDate() != null)
                    memberDTO.setRegisterDate(clubEntity.getMemberEntity().getRegisterDate());
                    if(clubEntity.getMemberEntity().getEmail() != null)
                        memberDTO.setEmail(clubEntity.getMemberEntity().getEmail());
                    if(clubEntity.getMemberEntity().getFirstName() != null)
                        memberDTO.setFirstName(clubEntity.getMemberEntity().getFirstName());
                    if(clubEntity.getMemberEntity().getLastName() != null)
                        memberDTO.setLastName(clubEntity.getMemberEntity().getLastName());
                    if(clubEntity.getMemberEntity().getMobile() > 0 )
                        memberDTO.setMobile(clubEntity.getMemberEntity().getMobile());
                    if(clubEntity.getMemberEntity().getMemberId() > 0)
                        memberDTO.setMemberId(clubEntity.getMemberEntity().getMemberId());
                    if(clubEntity.getMemberEntity().getGender() != null)
                        memberDTO.setGender(clubEntity.getMemberEntity().getGender());
                    if(clubEntity.getMemberEntity().getMonthlyincome() != null)
                        memberDTO.setMonthlyincome(clubEntity.getMemberEntity().getMonthlyincome());
                    if(clubEntity.getMemberEntity().getOccupation() != null)
                        memberDTO.setOccupation(clubEntity.getMemberEntity().getOccupation());
                    if(clubEntity.getMemberEntity().getCity() != null)
                        memberDTO.setCity(clubEntity.getMemberEntity().getCity());
                    if(clubEntity.getMemberEntity().getOrganization() != null)
                        memberDTO.setOrganization(clubEntity.getMemberEntity().getOrganization());
                    if(clubEntity.getMemberEntity().getMotivation() != null)
                        memberDTO.setMotivation(clubEntity.getMemberEntity().getMotivation());

                    memberDTOList.add(memberDTO);
                }
                club.setMemberDTOList(memberDTOList);
            }
        }
        return club;
    }
}
