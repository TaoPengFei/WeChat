package com.weixin.card;

import java.io.*;

import java.net.ConnectException;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public class HttpTool {

    public static String httpsRequest(String requestUrl, String requestMethod, String outputStr) {
        try {
            // 鍒涘缓SSLContext瀵硅薄锛屽苟浣跨敤鎴戜滑鎸囧畾鐨勪俊浠荤鐞嗗櫒鍒濆鍖�
            TrustManager[] tm = { (TrustManager) new MyX509Trus() };
            SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
            sslContext.init(null, tm, new java.security.SecureRandom());
            // 浠庝笂杩癝SLContext瀵硅薄涓緱鍒癝SLSocketFactory瀵硅薄
            SSLSocketFactory ssf = sslContext.getSocketFactory();
            URL url = new URL(requestUrl);
            HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
            conn.setSSLSocketFactory(ssf);
            conn.setDoOutput(true);
            conn.setDoInput(true);
            conn.setUseCaches(false);
            // 璁剧疆璇锋眰鏂瑰紡锛圙ET/POST锛�
            conn.setRequestMethod(requestMethod);
            conn.setRequestProperty("content-type", "application/x-www-form-urlencoded");
            // 褰搊utputStr涓嶄负null鏃跺悜杈撳嚭娴佸啓鏁版嵁

            // 浠庤緭鍏ユ祦璇诲彇杩斿洖鍐呭
            InputStream inputStream = conn.getInputStream();
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            String str = null;
            StringBuffer buffer = new StringBuffer();
            while ((str = bufferedReader.readLine()) != null) {
                buffer.append(str);
            }
            // 閲婃斁璧勬簮
            bufferedReader.close();
            inputStreamReader.close();
            inputStream.close();
            inputStream = null;
            conn.disconnect();
            return buffer.toString();
        } catch (ConnectException ce) {

        } catch (Exception e) {

        }
        return null;
    }
}