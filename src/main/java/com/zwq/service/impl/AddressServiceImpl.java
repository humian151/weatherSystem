package com.zwq.service.impl;

import com.zwq.dao.AddressMapper;
import com.zwq.redis.RedisDao;
import com.zwq.domain.City;
import com.zwq.domain.District;
import com.zwq.domain.Province;
import com.zwq.service.AddressService;
import com.zwq.util.ProtostuffUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService{
    @Autowired
    AddressMapper addressMapper;
    @Autowired
    RedisDao redisDao;
    @Override
    public List<Province> getAllProvince() {
        List<Province> provinces = null;
        List list = redisDao.getListObject("provinces");
        if (list == null || list.size()==0){
            provinces = addressMapper.getAllProvince();
            Long b = redisDao.saveListObject("provinces", provinces);
            if (b>0){
                System.out.println("保存省份信息到redis成功！");
            }else{
                System.out.println("保存省份信息到redis失败！");
            }
        }else {
            provinces = list;
        }
        return provinces;
    }

    @Override
    public List<City> getCityByProvinceId(int provinceId) {
        List<City> citys = null;
        List list = redisDao.getListObject("citys_"+provinceId);
        if(list ==null || list.size()==0){
            citys = addressMapper.getCityByProvinceId(provinceId);
            Long b = redisDao.saveListObject("citys_"+provinceId, citys);
            if (b>0){
                System.out.println("保存城市信息到redis成功！");
            }else{
                System.out.println("保存城市信息到redis失败！");
            }
        }else {
            citys = list;
        }
        return citys;
    }

    @Override
    public List<District> getDistrictByCityId(int cityId) {
        List<District> districts = null;
        List list = redisDao.getListObject("districts_"+cityId);
        if(list ==null || list.size()==0){
            districts = addressMapper.getDistrictByCityId(cityId);
            Long b = redisDao.saveListObject("districts_"+cityId, districts);
            if (b>0){
                System.out.println("保存县区信息到redis成功！");
            }else{
                System.out.println("保存县区信息到redis失败！");
            }
        }else {
            districts = list;
        }
        return districts;
    }
}
