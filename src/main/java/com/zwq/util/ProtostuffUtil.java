package com.zwq.util;
import io.protostuff.LinkedBuffer;
import io.protostuff.ProtostuffIOUtil;
import io.protostuff.Schema;
import io.protostuff.runtime.RuntimeSchema;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ProtostuffUtil {

    private static Map<Class<?>,Schema<?>> cachedSchema =
            new ConcurrentHashMap<Class<?>,Schema<?>>();

    @SuppressWarnings( "unchecked")
    private static <T> Schema<T> getSchema(Class<T> clazz){
        Schema<T> schema = (Schema<T>) cachedSchema.get(clazz);
        if(schema ==null){
            schema = RuntimeSchema.getSchema(clazz);
            if(schema!=null){
                cachedSchema.put(clazz, schema);
            }
        }
        return schema;
    }
    /**
     * 序列化
     * @param obj 序列化对象
     * @return 序列化后的byte[] 值
     */
    public static <T> byte[] serializer(T obj){
        @SuppressWarnings("unchecked")
        Class<T> clazz = (Class<T>) obj.getClass();
        LinkedBuffer buffer = LinkedBuffer.allocate(LinkedBuffer.DEFAULT_BUFFER_SIZE);
        try {
            Schema<T> schema = getSchema(clazz);
            return ProtostuffIOUtil.toByteArray(obj, schema, buffer);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            throw new IllegalStateException(e.getMessage(),e);
        }finally{
            buffer.clear();
        }
    }
    /**
     * 反序列化
     * @param data 序列化后的byte[] 值
     * @param clazz 反序列化后的对象
     * @return 返回的对象
     */
    public static <T>T deserializer(byte[] data,Class<T> clazz){
        try {
            T obj = clazz.newInstance();
            Schema<T> schema = getSchema(clazz);
            ProtostuffIOUtil.mergeFrom(data, obj, schema);
            return obj;
        } catch (Exception e) {
            throw new IllegalStateException(e.getMessage(),e);
        }
    }
}
