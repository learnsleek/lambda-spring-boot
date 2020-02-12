package com.moneyclub.model;

public class ClubEntity {

    private long clubId;
    private String clubName;
    private long ownerMemberId;
    private long memberId;
    private MemberEntity memberEntity;

    public ClubEntity(){}
    public  ClubEntity(final long clubId, final String clubName,
                       final long ownerMemberId, final long memberId,
                       final MemberEntity memberEntity){
        this.clubId = clubId;
        this.clubName = clubName;
        this.ownerMemberId = ownerMemberId;
        this.memberId = memberId;
        this.memberEntity = memberEntity;
    }

    public  ClubEntity(final long clubId, final String clubName,
                       final long ownerMemberId, final long memberId){
        this.clubId = clubId;
        this.clubName = clubName;
        this.ownerMemberId = ownerMemberId;
        this.memberId = memberId;
    }
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

    public MemberEntity getMemberEntity() {
        return memberEntity;
    }

    public void setMemberEntity(MemberEntity memberEntity) {
        this.memberEntity = memberEntity;
    }
}
