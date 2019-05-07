//
//  UIColor+MMAdd.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 15:57 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "UIColor+MMAdd.h"

@implementation UIColor (MMAdd)

+ (UIColor *)colorWithHexString:(NSString *)hex
{
    NSString * cString = [[hex stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if (cString.length != 6) {
        return [UIColor clearColor];
    }
    
    NSString * red = [cString substringToIndex:2];
    cString = [cString substringFromIndex:2];
    NSString * green = [cString substringToIndex:2];
    cString = [cString substringFromIndex:2];
    NSString * blue = cString;
    
    unsigned int r,g,b = 0;
    [[[NSScanner alloc] initWithString:red] scanHexInt:&r];
    [[[NSScanner alloc] initWithString:green] scanHexInt:&g];
    [[[NSScanner alloc] initWithString:blue] scanHexInt:&b];
    
    return [UIColor colorWithRed:r green:g blue:b];
}

+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1];
}

@end
