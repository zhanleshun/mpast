//
//  MPaaSInterface+mpast.m
//  mpast
//
//  Created by zhouhong on 2020/12/21.
//  Copyright © 2020 Alibaba. All rights reserved.
//

#import "MPaaSInterface+mpast.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation MPaaSInterface (mpast)

- (BOOL)enableSettingService
{
    return NO;
}

- (NSString *)userId
{
    return nil;
}

@end

#pragma clang diagnostic pop
