package com.zwq.service.impl;

import com.zwq.dao.AddressMapper;
import com.zwq.domain.City;
import com.zwq.domain.District;
import com.zwq.domain.Province;
import com.zwq.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService{
    @Autowired
    AddressMapper addressMapper;
    @Override
    public List<Province> getAllProvince() {
        return addressMapper.getAllProvince();
    }

    @Override
    public List<City> getCityByProvinceId(int provinceId) {
        return addressMapper.getCityByProvinceId(provinceId);
    }

    @Override
    public List<District> getDistrictByCityId(int cityId) {
        return addressMapper.getDistrictByCityId(cityId);
    }
}
