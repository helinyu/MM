//
//  SAMainWrapperModule.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 09:59 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SAMainWrapperModule.h"
#import "BeeHive.h"

#import "SAMainWrapperProtocol.h"

@interface SAMainWrapperModule ()<BHModuleProtocol>

@end

@implementation SAMainWrapperModule

- (void)modSetUp:(BHContext *)context {
    switch (context.env) {
        case BHEnvironmentDev:
            NSLog(@"开发环境");
            break;
        case BHEnvironmentTest:
            NSLog(@"测试环境");
            break;
        case BHEnvironmentProd:
            NSLog(@"生产环境");
            break;
        case BHEnvironmentStage:
            NSLog(@"stage");
            break;
        default:
            break;
    }
}

- (void)modInit:(BHContext *)context {
//    [[BeeHive shareInstance] registerService:@protocol(SAMainWrapperProtocol) service:NSClassFromString(@"SAMainWrapperViewController")];
}

@end
