package com.zwq.domain;

import java.io.Serializable;

/**
 *  省份表
 */
public class Province implements Serializable{
    private int id;
    private String name;
    private int orderid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }
}
