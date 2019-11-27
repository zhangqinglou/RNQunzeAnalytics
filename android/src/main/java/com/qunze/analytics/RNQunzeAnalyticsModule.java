
package com.qunze.analytics;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNQunzeAnalyticsModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNQunzeAnalyticsModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNQunzeAnalytics";
  }

  @ReactMethod
  public void setPageCollectionMode() {
    // 选用AUTO页面采集模式
    MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
  }

  @ReactMethod
  public void setEncryptEnabled(Boolean value) {
    UMConfigure.setEncryptEnabled(value);
  }

  @ReactMethod
  public void setLogEnabled(Boolean value) {
    UMConfigure.setLogEnabled(value);
  }

  @ReactMethod
  public void onPageStart(String pageName) {
    MobclickAgent.onPageStart(pageName);
  }

  @ReactMethod
  public void onPageEnd(String pageName) {
    MobclickAgent.onPageEnd(pageName);
  }

  @ReactMethod
  public void event(String event) {
    MobclickAgent.onEvent(reactContext,event);
  }

  @ReactMethod
  public void eventWithAttributes(String event, ReadableMap attributes) {
    ReadableNativeMap map2 = (ReadableNativeMap)attributes;
    Map useMap = map2.toHashMap();
    MobclickAgent.onEvent(reactContext,event,useMap);
  }

  /**
   * 按用户帐号统计
   * @param userID
   */
  @ReactMethod
  public void onProfileSignIn(String userID) {
    MobclickAgent.onProfileSignIn(userID);
  }

  /**
   * 按用户帐号统计，使用的是第三方帐号
   * @param Provider
   * @param userID
   */
  @ReactMethod
  public void onProfileSignInWithProvider(String Provider,String userID) {
    MobclickAgent.onProfileSignIn(Provider,userID);
  }

  /**
   * 账号登出，不再发送账号相关内容
   */
  @ReactMethod
  public void onProfileSignOff() {
    MobclickAgent.onProfileSignOff();
  }
}