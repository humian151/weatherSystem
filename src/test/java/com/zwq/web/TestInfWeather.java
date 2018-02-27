package com.zwq.web;

import net.sf.json.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class TestInfWeather {
    @Autowired
    RestTemplate restTemplate;
    @Test
    public void testGetWeather(){
        //HttpComponentsClientHttpRequestFactory clientHttpRequestFactory = new HttpComponentsClientHttpRequestFactory();
        //clientHttpRequestFactory.setConnectTimeout(3000);
        //clientHttpRequestFactory.setReadTimeout(3000);
       // RestTemplate restTemplate = new RestTemplate(clientHttpRequestFactory);
        String cityName = "九江";
        Map map = new HashMap();
        map.put("city","九江");
       // String forObject = restTemplate.getForObject("https://www.sojson.com/open/api/weather/json.shtml?city=" + cityName, String.class);
        JSONObject forObject = restTemplate.getForObject("https://www.sojson.com/open/api/weather/json.shtml?city={city}", JSONObject.class, map);
        System.out.println(forObject);
    }
}
