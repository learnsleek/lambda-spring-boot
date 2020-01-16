package com.moneyclub.dto;

public class InvitationDTO {

    private String entityType;
    private String entityvalue;
    private String message;
    private String status;

    public String getEntityType() {
        return entityType;
    }

    public void setEntityType(String entityType) {
        this.entityType = entityType;
    }

    public String getEntityvalue() {
        return entityvalue;
    }

    public void setEntityvalue(String entityvalue) {
        this.entityvalue = entityvalue;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
