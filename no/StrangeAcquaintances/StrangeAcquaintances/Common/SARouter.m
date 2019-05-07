//
//  ASRouter.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/25 20:17 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SARouter.h"

#import "SALoginProtocol.h"
#import "SARegisterProtocol.h"
#import "SARetrievePasswordProtocol.h"

@implementation SARouter

+ (void)jumpToWithNavVC:(SA_VC_IndexType)vcIndexType isPresentFromVC:(UIViewController *)fromVC then:(void (^ __nullable)(void))then {
    [SARouter jumpToVC:vcIndexType isWithNav:YES isPresentFromVC:fromVC then:then];
}

+ (void)jumpToVC:(SA_VC_IndexType)vcIndexType isWithNav:(BOOL)isWithNav isPresentFromVC:(UIViewController *)fromVC then:(void (^ __nullable)(void))then {
    [SARouter jumpToVC:vcIndexType isWithNav:isWithNav fromVc:fromVC isPresent:YES then:then];
}

+ (void)jumpToVC:(SA_VC_IndexType)vcIndexType isWithNav:(BOOL)isWithNav fromVc:(UIViewController *)fromVC isPresent:(BOOL)isPresent then:(void (^ __nullable)(void))then {
    id targetNavVC = nil;
    id targetVC = nil;
    if (vcIndexType == SA_VC_IndexTypeNone) {
        NSLog(@"type must not be zero");
        return;
    }
    
    if (vcIndexType == SA_VC_IndexTypeLogin) {
        UIViewController<SALoginProtocol> *vc = [[BeeHive shareInstance] createService:@protocol(SALoginProtocol)];
        targetVC = vc;
        if (isWithNav) {
            SABaseNavViewController *navVc = [[SABaseNavViewController alloc] initWithRootViewController:vc];
            targetNavVC = navVc;
        }
    }
    else if (vcIndexType == SA_VC_IndexTypeRegister) {
        UIViewController<SARegisterProtocol> *vc =[[BeeHive shareInstance] createService:@protocol(SARegisterProtocol)];
        targetVC = vc;
        if (isWithNav) {
            SABaseNavViewController *navVC = [[SABaseNavViewController alloc] initWithRootViewController:vc];
            targetNavVC = navVC;
        }
    }
    else {
        
    }
    
    if (isPresent) {
        if (isWithNav) {
            if (targetNavVC) {
               [fromVC presentViewController:targetNavVC animated:YES completion:then];
            }
            else {
                NSLog(@"target nav vc is not exist");
            }
        }
        else {
            if (targetVC) {
                [fromVC presentViewController:targetVC animated:YES completion:then];
            }
            else {
                NSLog(@"target vc is not exist");
            }
        }
    }
    else { // push
        if (isWithNav || !fromVC.navigationController) {
            NSLog(@"target vc is not be a navigatioin form || fromvc's navigtaion can not be a nil");
            return;
        }
        
        [fromVC.navigationController pushViewController:targetVC animated:YES];
    }
    
}

/*
 @{
 @"vc":vc_obj,
 @"isPresnet":bool_value,
 @"vcParams":@{property:value}
 }
 */

+ (void)jumpToVCWithParams:(NSDictionary *)params fromVC:(UIViewController *)fromVC then:(void (^ __nullable)(void))then {
    
}

@end
