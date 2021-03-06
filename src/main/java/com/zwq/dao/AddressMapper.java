package com.zwq.dao;

import com.zwq.domain.City;
import com.zwq.domain.District;
import com.zwq.domain.Province;

import java.util.List;

public interface AddressMapper {
    public List<Province> getAllProvince();

    public List<City> getCityByProvinceId(int provinceId);

    public List<District> getDistrictByCityId(int cityId);
}
