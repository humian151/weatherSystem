package com.zwq.redis;

import java.util.List;

public interface RedisDao {
    boolean saveObject(String key,Object object);
    Object getObjectKey(String key);

    long saveListObject(String key,List list);

    List getListObject(String key);
}
