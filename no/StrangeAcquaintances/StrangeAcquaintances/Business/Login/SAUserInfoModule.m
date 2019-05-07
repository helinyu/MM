//
//  SAUserInfoModule.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 21:20 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SAUserInfoModule.h"
#import "SALoginProtocol.h"
#import "SARegisterProtocol.h"
#import "SARetrievePasswordProtocol.h"
#import "BeeHive.h"

@implementation SAUserInfoModule

- (void)modInit:(BHContext *)context {
    [[BeeHive shareInstance] registerService:@protocol(SALoginProtocol) service:NSClassFromString(@"SALoginViewController")];
    [[BeeHive shareInstance] registerService:@protocol(SARegisterProtocol) service:NSClassFromString(@"SARegisterViewController")];
    [[BeeHive shareInstance] registerService:NSProtocolFromString(@"SARetrievePasswordProtocol") service:NSClassFromString(@"SARetrievePasswordViewController")];
}

@end
