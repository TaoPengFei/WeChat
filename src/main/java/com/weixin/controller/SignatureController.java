package com.weixin.controller;

import com.weixin.util.WeCardUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;

/**
 *
 * @author 陶鹏飞
 * Created by 陶鹏飞 on 2017/11/17.
 *
 */
@Controller
@RequestMapping("/Signature*")
public class SignatureController {
    //
    @RequestMapping("/getSignature.do")
    @ResponseBody
    public HashMap<String, String> wxconfMethod() {
        HashMap<String,String> map = new HashMap<String, String>();
        //WeCardUtil WeChatTool = new WeCardUtil();

        String sccesstoken = WeCardUtil.Getaccess_token();
        String jsapiticket = WeCardUtil.GetJsApiTicket(sccesstoken);
        String notisi=WeCardUtil.Getsignature(jsapiticket);
        String[] sourceStrArray = notisi.split("&");
        String signature = sourceStrArray[0];
        String timestamp = sourceStrArray[1];
        String nonceStr = sourceStrArray[2];
        map.put("signature",signature);
        map.put("timestamp",timestamp);
        map.put("nonceStr",nonceStr);
        //result.put("data",map);
        return map;

    }
}
