package com.zwq.redis.impl;

import com.zwq.redis.RedisDao;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Component
public class RedisDaoImpl implements RedisDao {
    @Resource(name = "redisTemplate")
    RedisTemplate<String,Object> redisTemplate;
    @Override
    public boolean saveObject(String key,Object object) {
        try {
            redisTemplate.opsForValue().set(key,object);
            //redisTemplate.expire(key,10, TimeUnit.SECONDS); //设置10秒过期
            return true;
        }catch (Exception e){
            return false;

        }

    }

    @Override
    public Object getObjectKey(String key) {

        try {
            Object obj =redisTemplate.opsForValue().get(key);
            return obj;
        }catch (Exception e){
            return null;
        }

    }

    @Override
    public  long saveListObject(String key, List list) {
        long l=0;
        try {
            Object[] addrArray = new Object[list.size()];
            for( int i = 0 ; i < list.size(); i++  ) {
                addrArray[i] = list.get(i);
            }
            l = redisTemplate.opsForList().leftPushAll(key, addrArray);
            redisTemplate.expire("addrList",20, TimeUnit.MINUTES); //20分钟后过期
        }catch (Exception e){
            e.printStackTrace();
        }

        return l;
    }

    @Override
    public  List getListObject(String key) {
        List list = null;
        try {
            list = redisTemplate.opsForList().range(key,0,-1);
            Collections.reverse(list);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  list;
    }
}
