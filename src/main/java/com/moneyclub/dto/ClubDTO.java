package com.moneyclub.dto;

import java.util.List;

public class ClubDTO {
    private long clubId;
    private String clubName;
    private long ownerMemberId;
    private long memberId;
    private List<MemberDTO> memberDTOList;

    public long getClubId() {
        return clubId;
    }

    public void setClubId(long clubId) {
        this.clubId = clubId;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public long getOwnerMemberId() {
        return ownerMemberId;
    }

    public void setOwnerMemberId(long ownerMemberId) {
        this.ownerMemberId = ownerMemberId;
    }

    public long getMemberId() {
        return memberId;
    }

    public void setMemberId(long memberId) {
        this.memberId = memberId;
    }

    public List<MemberDTO> getMemberDTOList() {
        return memberDTOList;
    }

    public void setMemberDTOList(List<MemberDTO> memberDTOList) {
        this.memberDTOList = memberDTOList;
    }
}
