//
//  RNQunzeConfigure.h
//  RNQunzeAnalytics
//
//  Created by zhangqinglou on 2019/11/27.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNQunzeConfigure : NSObject

+ (void)initWithAppkey:(NSString *)appkey channel:(NSString *)channel;
+ (void)getTestDeviceInfo;

@end

NS_ASSUME_NONNULL_END
