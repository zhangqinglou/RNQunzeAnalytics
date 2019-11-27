//
//  RNQunzeConfigure.m
//  RNQunzeAnalytics
//
//  Created by zhangqinglou on 2019/11/27.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNQunzeConfigure.h"
#import <UMCommon/UMCommon.h>

@implementation RNQunzeConfigure

+ (void)initWithAppkey:(NSString *)appkey channel:(NSString *)channel
{
  SEL sel = NSSelectorFromString(@"setWraperType:wrapperVersion:");
  if ([UMConfigure respondsToSelector:sel]) {
    [UMConfigure performSelector:sel withObject:@"react-native" withObject:@"1.0"];
  }
  [UMConfigure setLogEnabled: true];
  [UMConfigure initWithAppkey:appkey channel:channel];
}

+ (void)getTestDeviceInfo {
    //此函数在UMCommon.framework版本1.4.2及以上版本，在UMConfigure.h的头文件中加入。
    //如果用户用组件化SDK,需要升级最新的UMCommon.framework版本。
    NSString * deviceID =[UMConfigure deviceIDForIntegration];
    NSLog(@"集成测试的deviceID:%@", deviceID);
}

@end
