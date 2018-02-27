package com.zwq.dao;

import com.zwq.domain.City;
import com.zwq.domain.District;
import com.zwq.domain.Province;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class TestAddressMapper {
    @Resource
    private AddressMapper addressMapper;

    @Test
    public void testgetAllProvince(){
        List<Province> allProvince = addressMapper.getAllProvince();
        System.out.println("-----------------"+allProvince.size());

    }
    @Test
    public void testgetCityByProvinceId(){
        List<City> cityByProvinceId = addressMapper.getCityByProvinceId(10);
        System.out.println("-----------------"+cityByProvinceId.size());
        System.out.println(cityByProvinceId.get(0).getProvince().getName());
    }
    @Test
    public void testgetDistrictByCityId(){
        List<District> districtByCityId = addressMapper.getDistrictByCityId(75);
        System.out.println(districtByCityId.get(0).getCity().getName());

    }
}
