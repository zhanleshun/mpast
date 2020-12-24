//
//  DTFrameworkInterface+mpast.m
//  mpast
//
//  Created by zhouhong on 2020/12/21.
//  Copyright © 2020 MSL. All rights reserved.
//

#import "DTFrameworkInterface+mpast.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation DTFrameworkInterface (mpast)

- (BOOL)shouldLogReportActive
{
    return YES;
}

- (NSTimeInterval)logReportActiveMinInterval
{
    return 0;
}

- (BOOL)shouldLogStartupConsumption
{
    return YES;
}

- (BOOL)shouldAutoactivateBandageKit
{
    return YES;
}

- (BOOL)shouldAutoactivateShareKit
{
    return YES;
}

- (DTNavigationBarBackTextStyle)navigationBarBackTextStyle
{
    return DTNavigationBarBackTextStyleAlipay;
}

- (void)application:(UIApplication *)application beforeDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 小程序初始化，必须在before方法，否则不生效
    
    [MPNebulaAdapterInterface initNebula];
    
    //[APMapKeySetting getInstance].apiKey = @"ONEXCB182C5071425_IOS";
}

- (void)application:(UIApplication *)application afterDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 定制容器
    //[MPNebulaAdapterInterface shareInstance].nebulaVeiwControllerClass =H5WebViewControllerer class];
    [MPNebulaAdapterInterface shareInstance].nebulaNeedVerify = NO;
    [MPNebulaAdapterInterface shareInstance].nebulaUserAgent = @"mPaaS/Portal";
    //[MPNebulaAdapterInterface shareInstance].nebulaCommonResourceAppList = @[@"77777777"];
    // 全量更新离线包
    [[MPNebulaAdapterInterface shareInstance] requestAllNebulaApps:^(NSDictionary *data, NSError *error) {
        NSString *result = @"后台无新包发布";
        if (!error && [(NSMutableArray *)data[@"data"] count] > 0) {
             result = [NSString stringWithFormat:@"%@", data[@"data"]];
        }
        NSLog(@"更新离线包完成");
        NSLog(@"%@", result);
    }];
}

@end

#pragma clang diagnostic pop
