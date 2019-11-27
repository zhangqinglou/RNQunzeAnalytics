
#import "RNQunzeAnalytics.h"
#import <UMCommon/UMCommon.h>
#import <UMAnalytics/MobClick.h>
#import "RNUMConfigure.h"

@implementation RNQunzeAnalytics

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setAppkeyAndChannelId:(NSString *)key channelId:(NSString *)channelId){
  NSString *deviceID = [UMConfigure deviceIDForIntegration];
  NSData* jsonData = [NSJSONSerialization dataWithJSONObject:@{@"oid" : deviceID}
                                                     options:NSJSONWritingPrettyPrinted
                                                       error:nil];
  
  NSLog(@"%@", [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
  
  
  [RNUMConfigure initWithAppkey:key channel:channelId];
}

RCT_EXPORT_METHOD(onPageStart:(NSString *)pageName){
  if (pageName == nil || [pageName isKindOfClass:[NSNull class]]) {
    return;
  }
  [MobClick beginLogPageView:pageName];
}

RCT_EXPORT_METHOD(onPageEnd:(NSString *)pageName){
  if (pageName == nil || [pageName isKindOfClass:[NSNull class]]) {
    return;
  }
  [MobClick endLogPageView:pageName];
}

RCT_EXPORT_METHOD(event:(NSString *)event){
  if (event == nil || [event isKindOfClass:[NSNull class]]) {
    return;
  }
  [MobClick event:event];
}

RCT_EXPORT_METHOD(eventWithAttributes:(NSString *)event attributes:(NSDictionary *)attributes){
  if (event == nil || [event isKindOfClass:[NSNull class]]) {
    return;
  }
  [MobClick event:event attributes:attributes];
}

RCT_EXPORT_METHOD(setLogEnabled:(BOOL)value){
  [UMConfigure setLogEnabled:value];
}

RCT_EXPORT_METHOD(onProfileSignIn:(NSString *)userID){
  if (userID == nil || [userID isKindOfClass:[NSNull class]]) {
    return;
  }
  [MobClick profileSignInWithPUID:userID];
}

RCT_EXPORT_METHOD(onProfileSignInWithProvider:(NSString *)provider userID:(NSString *)userID){
  if (userID == nil || [userID isKindOfClass:[NSNull class]]) {
    return;
  }
  if (provider == nil || [provider isKindOfClass:[NSNull class]]) {
    return;
  }
  [MobClick profileSignInWithPUID:userID provider:provider];
}

RCT_EXPORT_METHOD(onProfileSignOff){
  [MobClick profileSignOff];
}
@end
  
