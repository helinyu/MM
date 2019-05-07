//
//  UIColor+MMAdd.h
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 15:57 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (MMAdd)

+ (UIColor *)colorWithHexString:(NSString *)hex;
+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

@end

NS_ASSUME_NONNULL_END
