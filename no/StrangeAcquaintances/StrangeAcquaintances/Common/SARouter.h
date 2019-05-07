//
//  ASRouter.h
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/25 20:17 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SA_VC_IndexType) {
    SA_VC_IndexTypeNone = 0,
    SA_VC_IndexTypeLogin = 1,
    SA_VC_IndexTypeRegister =2,
};

NS_ASSUME_NONNULL_BEGIN

@interface SARouter : NSObject

/**
主要用于跳转到目标的vc， 目标VC带有Nav ， （这个时候不能够有push方式）
present的方式，

 @param vcIndexType 已知的枚举VC类型
 @param fromVC 当前的vc
 @param then 完成操作的回调
 
像：我们的loginVie就是使用第一个方法就可以了
 */
+ (void)jumpToWithNavVC:(SA_VC_IndexType)vcIndexType isPresentFromVC:(UIViewController *)fromVC then:(void (^ __nullable)(void))then;

/// 这个g就是present的方式，是否带有nav
+ (void)jumpToVC:(SA_VC_IndexType)vcIndexType isWithNav:(BOOL)isWithNav isPresentFromVC:(UIViewController *)fromVC then:(void (^ __nullable)(void))then;

/**
 跳转到指定的VC，最底层的方法

 @param vcIndexType  已知的目标枚举VC类型
 @param isWithNav 目标vc是否带有导航栏
 @param fromVC 转场的开始VC
 @param isPresent 是present方式还是push方式
 @param then 回调
 */
+ (void)jumpToVC:(SA_VC_IndexType)vcIndexType isWithNav:(BOOL)isWithNav fromVc:(UIViewController *)fromVC isPresent:(BOOL)isPresent then:(void (^ __nullable)(void))then;

+ (void)jumpToVCWithParams:(NSDictionary *)params fromVC:(UIViewController *)fromVC then:(void (^ __nullable)(void))then;

@end

NS_ASSUME_NONNULL_END
