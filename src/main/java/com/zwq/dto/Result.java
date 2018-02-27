package com.zwq.dto;

/**
 * 返回工具类
 */
public class Result {
    private int stateCode;
    private Object message;

    public Result(int stateCode, Object message) {
        this.stateCode = stateCode;
        this.message = message;
    }
    public Result() {
    }

    public int getStateCode() {
        return stateCode;
    }

    public void setStateCode(int stateCode) {
        this.stateCode = stateCode;
    }

    public Object getMessage() {
        return message;
    }

    public void setMessage(Object message) {
        this.message = message;
    }
}
