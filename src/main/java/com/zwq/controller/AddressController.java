package com.zwq.controller;

import com.zwq.domain.City;
import com.zwq.domain.District;
import com.zwq.domain.Province;
import com.zwq.dto.Result;
import com.zwq.service.AddressService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/address")
@RestController
public class AddressController {
    @Autowired
    AddressService addressService;

    @Autowired
    RestTemplate restTemplate;

    @RequestMapping("/getAllProvince")
    public List<Province> getAllProvince(){
        return addressService.getAllProvince();
    }
    @RequestMapping("/getCityByProvinceId/{provinceId}")
    public List<City> getCityByProvinceId(@PathVariable int provinceId) {
        return addressService.getCityByProvinceId(provinceId);
    }

    @RequestMapping("/getDistrictByCityId/{cityId}")
    public List<District> getDistrictByCityId(@PathVariable int cityId) {
        return addressService.getDistrictByCityId(cityId);
    }

    @RequestMapping("/getWeatherByCityName/{cityName}")
    public Result getWeatherByCityName(@PathVariable String cityName){
        try {
            Map<String,String> params = new HashMap<String,String>();
            params.put("city",cityName);
            JSONObject result = restTemplate.getForObject("https://www.sojson.com/open/api/weather/json.shtml?city={city}", JSONObject.class, params);
            return new Result(200,result);
        }catch (Exception e){
            return new Result(304,e.getMessage());
        }
    }
}
