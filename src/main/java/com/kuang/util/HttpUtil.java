package com.kuang.util;
import com.alibaba.fastjson.JSONObject;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

public class HttpUtil {

    public static String doGet(String uri) {
        //1:创建一个HttpClient的实例
        CloseableHttpClient httpclient = HttpClients.createDefault();
        //2:创建一个get请求实例
        HttpGet httpGet = new HttpGet(uri);
        //请求的响应:
        CloseableHttpResponse response1 = null;
        try {
            //3:使用HttpClient的实例执行get请求
            response1 = httpclient.execute(httpGet);
            //http请求的状态:404 500 200
            //System.out.println(response1.getStatusLine());
            int statusCode = response1.getStatusLine().getStatusCode();
            if (statusCode == 200) {
                //请求成功:
                HttpEntity entity1 = response1.getEntity();
                String result = EntityUtils.toString(entity1, "utf-8");
                return result;
            } else {
                //请求失败
                System.out.println("请求失败......:"+statusCode);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public JSONObject domain(String type, String code){
        JSONObject jo = JSONObject.parseObject("{'message':'Error',}");
        if(type.equals("getSession_key")){
            System.out.println("获取session和openid");
            String result=doGet("https://api.weixin.qq.com/sns/jscode2session?appid=wx54f56cefaeec3a35&secret=927f3b6b8dfcda80d1a367ef57c9c1cd&js_code="+code+"&grant_type=authorization_code");
            jo = JSONObject.parseObject(result);
            return jo;
        }else if(type.equals("getUserData")){
            System.out.println("获取用户信息");
        }
        return jo;
    }
}