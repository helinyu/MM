//
//  UIView+ASAdd.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/4 09:56 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "UIView+ASAdd.h"

@implementation UIView (ASAdd)

- (void)addSubviews:(NSArray<UIView *> *)subviews {
    if (subviews.count <=0) {
        return;
    }
    for (UIView *subview in subviews) {
        if ([subview isKindOfClass:[UIView class]]) {
            [self addSubview:subview];
        }
    }
 }

@end
