package com.qunze.analytics;

import android.content.Context;
import android.util.Log;

import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

public class RNQunzeConfigure {

    /**
     * 初始化统计
     * @param context
     * @param key
     * @param channelId 按渠道进行统计
     */
    public static void initUmentConfigurg(Context context, String key, String channelId) {
        Log.i("RNQunzeAnalytics", BuildConfig.DEBUG + "");
        // 初始化SDK
        UMConfigure.setLogEnabled(BuildConfig.DEBUG);
        UMConfigure.init(context, key, channelId, UMConfigure.DEVICE_TYPE_PHONE, null);
        // 默认选用AUTO页面采集模式
        MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
        //MobclickAgent.setSessionContinueMillis(30 * 1000);

    }

    public static void  onResume(Context context) {
        MobclickAgent.onResume(context);
    }

    public static void onPaused(Context context) {
        MobclickAgent.onPause(context);
    }

    public static String[] getTestDeviceInfo(Context context){
        String[] deviceInfo = new String[2];
        try {
            if(context != null){
                deviceInfo[0] = DeviceConfig.getDeviceIdForGeneral(context);
                deviceInfo[1] = DeviceConfig.getMac(context);
            }
        } catch (Exception e){
        }
        return deviceInfo;
    }
}
