package com.zwq.domain;

import java.io.Serializable;

/**
 * 城市表
 */
public class City  implements Serializable {
    private int id;
    private String name;
    private String areaCode;

    private Province province;

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

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }
}
