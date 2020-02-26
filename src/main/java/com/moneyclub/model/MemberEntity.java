package com.moneyclub.model;

import java.util.Date;

public class MemberEntity {

    private long memberId;
    private String firstName;
    private String lastName;
    private String email;
    private long mobile;
    private long whatAppNumber;
    private Date registerDate;
    private String gender;
    private String monthlyincome;
    private String occupation;
    private String city;
    private String organization;
    private String motivation;

    public MemberEntity(){

    }

    public MemberEntity(final long memberId, final String firstName,
                 final String lastName, final String email,
                 final long mobile, final Date registerDate,
                  final String gender, final String monthlyincome,
                        final String occupation, final String city,
                        final String organization, final String motivation){
        this.memberId = memberId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.mobile = mobile;
        this.registerDate = registerDate;
        this.gender = gender;
        this.monthlyincome = monthlyincome;
        this.occupation = occupation;
        this.city = city;
        this.organization = organization;
        this.motivation = motivation;
    }

    public long getMemberId() {
        return memberId;
    }

    public void setMemberId(long memberId) {
        this.memberId = memberId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getMobile() {
        return mobile;
    }

    public void setMobile(long mobile) {
        this.mobile = mobile;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMonthlyincome() {
        return monthlyincome;
    }

    public void setMonthlyincome(String monthlyincome) {
        this.monthlyincome = monthlyincome;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getMotivation() {
        return motivation;
    }

    public void setMotivation(String motivation) {
        this.motivation = motivation;
    }

    public long getWhatAppNumber() {
        return whatAppNumber;
    }

    public void setWhatAppNumber(long whatAppNumber) {
        this.whatAppNumber = whatAppNumber;
    }
}
