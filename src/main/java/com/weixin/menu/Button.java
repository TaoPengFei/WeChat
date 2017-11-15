package com.weixin.menu;

/**
 *
 * @author 陶鹏飞
 * Created by 陶鹏飞 on 2017/11/14.
 *
 */
public class Button {
    //꽉데잚謹
    private String type;
    //꽉데츰냔
    private String name;
    //랗섬꽉데
    private Button[] sub_button;
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Button[] getSub_button() {
        return sub_button;
    }
    public void setSub_button(Button[] sub_button) {
        this.sub_button = sub_button;
    }
}