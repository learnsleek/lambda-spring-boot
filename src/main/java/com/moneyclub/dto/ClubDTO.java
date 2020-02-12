package com.moneyclub.dto;

public class ClubDTO {
    private long clubId;
    private String clubName;
    private long ownerMemberId;
    private long memberId;
    private MemberDTO memberDTO;

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

    public MemberDTO getMemberDTO() {
        return memberDTO;
    }

    public void setMemberDTO(MemberDTO memberDTO) {
        this.memberDTO = memberDTO;
    }
}
