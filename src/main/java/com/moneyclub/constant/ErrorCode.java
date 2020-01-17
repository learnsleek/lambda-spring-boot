package com.moneyclub.constant;

public enum ErrorCode {
    BUSINESS_LOGIC_EXCEPTION (10000),
    DATABASE_LEVEL_EXCEPTION (20000),
    REQUIRED_DATA(40000),
    OTHER_EXCEPTION (10000);

    private final int errorCode;

    ErrorCode(int errorCode) {
        this.errorCode = errorCode;
    }

    public  int getErrorCode() {
        return errorCode;
    }
}
