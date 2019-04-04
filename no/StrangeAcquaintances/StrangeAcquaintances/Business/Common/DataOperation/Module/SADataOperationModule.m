//
//  SADownLoadModule.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 11:24 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SADataOperationModule.h"
#import "BHModuleProtocol.h"

@interface SADataOperationModule () <BHModuleProtocol>

@end

@implementation SADataOperationModule

- (BOOL)async {
    return YES;
}

- (void)modSetUp:(BHContext *)context {
    
}

- (void)modInit:(BHContext *)context {
    
}

- (void)modSplash:(BHContext *)context {
    
}

- (void)modQuickAction:(BHContext *)context {
    
}

- (void)modTearDown:(BHContext *)context {
    
}

- (void)modWillResignActive:(BHContext *)context {
    
}

- (void)modDidEnterBackground:(BHContext *)context {
    
}

- (void)modWillEnterForeground:(BHContext *)context {
    
}

- (void)modDidBecomeActive:(BHContext *)context {
    
}

- (void)modWillTerminate:(BHContext *)context {
    
}

- (void)modUnmount:(BHContext *)context {
    
}

- (void)modOpenURL:(BHContext *)context {
    
}

- (void)modDidReceiveMemoryWaring:(BHContext *)context {
    
}

- (void)modDidFailToRegisterForRemoteNotifications:(BHContext *)context {
}

- (void)modDidRegisterForRemoteNotifications:(BHContext *)context {
    
}

- (void)modDidReceiveRemoteNotification:(BHContext *)context {
    
}

- (void)modDidReceiveLocalNotification:(BHContext *)context {
    
}

- (void)modWillPresentNotification:(BHContext *)context {
    
}

- (void)modDidReceiveNotificationResponse:(BHContext *)context {
    
}

- (void)modWillContinueUserActivity:(BHContext *)context {
    
}

- (void)modContinueUserActivity:(BHContext *)context {
    
}

- (void)modDidFailToContinueUserActivity:(BHContext *)context {
    
}

- (void)modDidUpdateContinueUserActivity:(BHContext *)context {
    
}

- (void)modDidCustomEvent:(BHContext *)context {
    
}

@end
